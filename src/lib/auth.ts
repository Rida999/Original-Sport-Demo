const AUTH_STORAGE_KEY = "original-sport-authenticated";
const AUTH_USER_STORAGE_KEY = "original-sport-auth-user";
const DEMO_SUPERADMIN_USERNAME = "demo-superadmin";
const DEMO_SUPERADMIN_PASSWORD = "demo-superadmin";

type UserRole = "superadmin";

type SignInResult =
  | { success: true; requiresPasswordChange: false }
  | { success: false; requiresPasswordChange: false };

export function isSignedIn() {
  if (typeof window === "undefined") return false;
  return window.localStorage.getItem(AUTH_STORAGE_KEY) === "true";
}

export function getCurrentUser(): UserRole | null {
  if (typeof window === "undefined" || !isSignedIn()) return null;
  const user = window.localStorage.getItem(AUTH_USER_STORAGE_KEY);
  return user === "superadmin" ? "superadmin" : null;
}

export function isSuperAdmin() {
  return getCurrentUser() === "superadmin";
}

export function canAccessPath(pathname: string) {
  return isSignedIn();
}

export function signIn(username: string, password: string): SignInResult {
  if (typeof window === "undefined") {
    return { success: false, requiresPasswordChange: false };
  }

  const normalizedUsername = username.trim().toLowerCase();

  if (
    normalizedUsername === DEMO_SUPERADMIN_USERNAME &&
    password === DEMO_SUPERADMIN_PASSWORD
  ) {
    completeSignIn("superadmin");
    return { success: true, requiresPasswordChange: false };
  }

  return { success: false, requiresPasswordChange: false };
}

export function signOut() {
  if (typeof window === "undefined") return;
  window.localStorage.removeItem(AUTH_STORAGE_KEY);
  window.localStorage.removeItem(AUTH_USER_STORAGE_KEY);
}

function completeSignIn(username: UserRole) {
  window.localStorage.setItem(AUTH_STORAGE_KEY, "true");
  window.localStorage.setItem(AUTH_USER_STORAGE_KEY, username);
}
