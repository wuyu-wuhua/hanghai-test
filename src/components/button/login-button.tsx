"use client";

import { Button } from "@nextui-org/react";
import { signIn } from "next-auth/react";
import { useTranslations } from "next-intl";

export default function () {
  const t = useTranslations("Nav");
  return (
    <Button
      className="capitalize text-black rounded-full"
      onClick={() => {
        console.log("Login button clicked");
        signIn("google").catch(err => console.error("SignIn error:", err));
      }}
    >
      {t("login")}
    </Button>
  );
}
