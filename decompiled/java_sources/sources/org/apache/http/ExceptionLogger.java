package org.apache.http;

/* loaded from: classes12.dex */
public interface ExceptionLogger {
    public static final ExceptionLogger NO_OP = new C19331a();
    public static final ExceptionLogger STD_ERR = new C19332b();

    /* renamed from: org.apache.http.ExceptionLogger$a */
    /* loaded from: classes12.dex */
    public static class C19331a implements ExceptionLogger {
        @Override // org.apache.http.ExceptionLogger
        public void log(Exception exc) {
        }
    }

    /* renamed from: org.apache.http.ExceptionLogger$b */
    /* loaded from: classes12.dex */
    public static class C19332b implements ExceptionLogger {
        @Override // org.apache.http.ExceptionLogger
        public void log(Exception exc) {
            exc.printStackTrace();
        }
    }

    void log(Exception exc);
}
