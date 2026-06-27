"use client";

import { createClient } from "@/lib/supabase/client";
import { Button } from "@/components/ui/button";
import { LogOut } from "lucide-react";
import { useRouter } from "next/navigation";
import { useState, type ComponentProps, type ReactNode } from "react";

type LogoutButtonProps = Omit<
  ComponentProps<typeof Button>,
  "children" | "onClick" | "type"
> & {
  children?: ReactNode;
  redirectTo?: string;
};

export function LogoutButton({
  children = "Logout",
  disabled,
  redirectTo = "/auth/login",
  size = "sm",
  variant = "outline",
  ...props
}: LogoutButtonProps) {
  const router = useRouter();
  const [isLoggingOut, setIsLoggingOut] = useState(false);

  const logout = async () => {
    setIsLoggingOut(true);
    const supabase = createClient();
    await supabase.auth.signOut();
    router.replace(redirectTo);
    router.refresh();
  };

  return (
    <Button
      type="button"
      onClick={logout}
      disabled={disabled || isLoggingOut}
      size={size}
      variant={variant}
      {...props}
    >
      <LogOut aria-hidden="true" />
      {isLoggingOut ? "Logging out..." : children}
    </Button>
  );
}
