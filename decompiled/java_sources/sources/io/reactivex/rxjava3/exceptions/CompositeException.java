package io.reactivex.rxjava3.exceptions;

import com.bumptech.glide.load.engine.GlideException;
import com.google.android.material.motion.MotionUtils;
import io.reactivex.rxjava3.annotations.NonNull;
import java.io.PrintStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.LinkedHashSet;
import java.util.List;

/* loaded from: classes4.dex */
public final class CompositeException extends RuntimeException {
    private static final long serialVersionUID = 3026362227162912146L;
    private Throwable cause;
    private final List<Throwable> exceptions;
    private final String message;

    /* loaded from: classes4.dex */
    public static final class ExceptionOverview extends RuntimeException {
        private static final long serialVersionUID = 3875212506787802066L;

        public ExceptionOverview(String message) {
            super(message);
        }

        @Override // java.lang.Throwable
        public synchronized Throwable fillInStackTrace() {
            return this;
        }
    }

    /* renamed from: io.reactivex.rxjava3.exceptions.CompositeException$a */
    /* loaded from: classes4.dex */
    public static abstract class AbstractC17248a {
        /* renamed from: a */
        public abstract AbstractC17248a mo61114a(Object o);
    }

    /* renamed from: io.reactivex.rxjava3.exceptions.CompositeException$b */
    /* loaded from: classes4.dex */
    public static final class C17249b extends AbstractC17248a {

        /* renamed from: a */
        public final PrintStream f95013a;

        public C17249b(PrintStream printStream) {
            this.f95013a = printStream;
        }

        @Override // io.reactivex.rxjava3.exceptions.CompositeException.AbstractC17248a
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public C17249b mo61114a(Object o) {
            this.f95013a.print(o);
            return this;
        }
    }

    /* renamed from: io.reactivex.rxjava3.exceptions.CompositeException$c */
    /* loaded from: classes4.dex */
    public static final class C17250c extends AbstractC17248a {

        /* renamed from: a */
        public final PrintWriter f95014a;

        public C17250c(PrintWriter printWriter) {
            this.f95014a = printWriter;
        }

        @Override // io.reactivex.rxjava3.exceptions.CompositeException.AbstractC17248a
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public C17250c mo61114a(Object o) {
            this.f95014a.print(o);
            return this;
        }
    }

    public CompositeException(@NonNull Throwable... exceptions) {
        this(exceptions == null ? Collections.singletonList(new NullPointerException("exceptions was null")) : Arrays.asList(exceptions));
    }

    private void appendStackTrace(AbstractC17248a output, Throwable ex, String prefix) {
        output.mo61114a(prefix).mo61114a(ex).mo61114a('\n');
        for (StackTraceElement stackTraceElement : ex.getStackTrace()) {
            output.mo61114a("\t\tat ").mo61114a(stackTraceElement).mo61114a('\n');
        }
        if (ex.getCause() != null) {
            output.mo61114a("\tCaused by: ");
            appendStackTrace(output, ex.getCause(), "");
        }
    }

    @Override // java.lang.Throwable
    @NonNull
    public synchronized Throwable getCause() {
        int i;
        if (this.cause == null) {
            String property = System.getProperty("line.separator");
            if (this.exceptions.size() > 1) {
                IdentityHashMap identityHashMap = new IdentityHashMap();
                StringBuilder sb = new StringBuilder();
                sb.append("Multiple exceptions (");
                sb.append(this.exceptions.size());
                sb.append(MotionUtils.f31762d);
                sb.append(property);
                for (Throwable th : this.exceptions) {
                    int i2 = 0;
                    while (true) {
                        if (th != null) {
                            for (int i3 = 0; i3 < i2; i3++) {
                                sb.append(GlideException.C1935a.f14609h);
                            }
                            sb.append("|-- ");
                            sb.append(th.getClass().getCanonicalName());
                            sb.append(": ");
                            String message = th.getMessage();
                            if (message == null || !message.contains(property)) {
                                sb.append(message);
                                sb.append(property);
                            } else {
                                sb.append(property);
                                for (String str : message.split(property)) {
                                    for (int i4 = 0; i4 < i2 + 2; i4++) {
                                        sb.append(GlideException.C1935a.f14609h);
                                    }
                                    sb.append(str);
                                    sb.append(property);
                                }
                            }
                            int i5 = 0;
                            while (true) {
                                i = i2 + 2;
                                if (i5 >= i) {
                                    break;
                                }
                                sb.append(GlideException.C1935a.f14609h);
                                i5++;
                            }
                            StackTraceElement[] stackTrace = th.getStackTrace();
                            if (stackTrace.length > 0) {
                                sb.append("at ");
                                sb.append(stackTrace[0]);
                                sb.append(property);
                            }
                            if (identityHashMap.containsKey(th)) {
                                Throwable cause = th.getCause();
                                if (cause != null) {
                                    for (int i6 = 0; i6 < i; i6++) {
                                        sb.append(GlideException.C1935a.f14609h);
                                    }
                                    sb.append("|-- ");
                                    sb.append("(cause not expanded again) ");
                                    sb.append(cause.getClass().getCanonicalName());
                                    sb.append(": ");
                                    sb.append(cause.getMessage());
                                    sb.append(property);
                                }
                            } else {
                                identityHashMap.put(th, Boolean.TRUE);
                                th = th.getCause();
                                i2++;
                            }
                        }
                    }
                }
                this.cause = new ExceptionOverview(sb.toString().trim());
            } else {
                this.cause = this.exceptions.get(0);
            }
        }
        return this.cause;
    }

    @NonNull
    public List<Throwable> getExceptions() {
        return this.exceptions;
    }

    @Override // java.lang.Throwable
    @NonNull
    public String getMessage() {
        return this.message;
    }

    @Override // java.lang.Throwable
    public void printStackTrace() {
        printStackTrace(System.err);
    }

    public int size() {
        return this.exceptions.size();
    }

    @Override // java.lang.Throwable
    public void printStackTrace(PrintStream s) {
        printStackTrace(new C17249b(s));
    }

    @Override // java.lang.Throwable
    public void printStackTrace(PrintWriter s) {
        printStackTrace(new C17250c(s));
    }

    public CompositeException(@NonNull Iterable<? extends Throwable> errors) {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        if (errors != null) {
            for (Throwable th : errors) {
                if (th instanceof CompositeException) {
                    linkedHashSet.addAll(((CompositeException) th).getExceptions());
                } else if (th != null) {
                    linkedHashSet.add(th);
                } else {
                    linkedHashSet.add(new NullPointerException("Throwable was null!"));
                }
            }
        } else {
            linkedHashSet.add(new NullPointerException("errors was null"));
        }
        if (!linkedHashSet.isEmpty()) {
            List<Throwable> unmodifiableList = Collections.unmodifiableList(new ArrayList(linkedHashSet));
            this.exceptions = unmodifiableList;
            this.message = unmodifiableList.size() + " exceptions occurred. ";
            return;
        }
        throw new IllegalArgumentException("errors is empty");
    }

    private void printStackTrace(AbstractC17248a output) {
        output.mo61114a(this).mo61114a("\n");
        for (StackTraceElement stackTraceElement : getStackTrace()) {
            output.mo61114a("\tat ").mo61114a(stackTraceElement).mo61114a("\n");
        }
        int i = 1;
        for (Throwable th : this.exceptions) {
            output.mo61114a("  ComposedException ").mo61114a(Integer.valueOf(i)).mo61114a(" :\n");
            appendStackTrace(output, th, "\t");
            i++;
        }
        output.mo61114a("\n");
    }
}
