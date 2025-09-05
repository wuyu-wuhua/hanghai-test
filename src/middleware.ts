import createMiddleware from 'next-intl/middleware';
import { routing } from './i18n/routing';

export default createMiddleware({
    // A list of all locales that are supported
    locales: routing.locales,

    // If this locale is matched, pathnames work without a prefix (e.g. `/about`)
    defaultLocale: routing.defaultLocale,

    // Redirect to default locale if no locale is detected
    localePrefix: 'never',

    // Enable locale detection
    localeDetection: true
});

export const config = {
    // Match all pathnames except for
    // - … if they start with `/api`, `/_next` or `/_vercel`
    // - … static files (have a file extension)
    matcher: ['/((?!api|_next|_vercel|.*\\..*).*)', '/', '/(en|es|de|fr)/:path*']
};