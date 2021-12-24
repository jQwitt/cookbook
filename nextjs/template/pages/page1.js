import React from 'react';
import Link from 'next/link';
import 'tailwindcss/tailwind.css';

export default function Page1() {
  return (
    <div className="flex flex-col min-h-screen justify-center items-center">
      <div className="font-bold text-xl mb-2">Starter App</div>
      <Link href="/">
        <a>nextjs default page</a>
      </Link>
    </div>
  );
}
