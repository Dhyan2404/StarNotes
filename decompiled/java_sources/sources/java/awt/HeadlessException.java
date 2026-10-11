package java.awt;

/* loaded from: classes4.dex */
public class HeadlessException extends UnsupportedOperationException {
    private static final long serialVersionUID = 167183644944358563L;

    public HeadlessException() {
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        return super.getMessage();
    }

    public HeadlessException(String str) {
        super(str);
    }
}
