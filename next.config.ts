import type { NextConfig } from "next";

const nextConfig: NextConfig = {
  cacheComponents: true,
  images: {
    remotePatterns: [
      {
        protocol: "https",
        hostname: "limitlesstcg.nyc3.cdn.digitaloceanspaces.com",
        pathname: "/pocket/**",
      },
    ],
  },
  devIndicators: {
    position: "top-right",
  },
};

export default nextConfig;
