package com.onyx.engine.sdk;

import com.onyx.engine.sdk.BookOpenResult;
import java.util.function.Supplier;
import org.apache.logging.log4j.util.Chars;

/* loaded from: classes8.dex */
public class BookOpenResult {
    private int bookSize;
    private HandleErrorCode err;
    private long handle;
    private String message;

    public BookOpenResult() {
        this.err = HandleErrorCode.UNKNOWN;
    }

    public static BookOpenResult fromJson(String str) {
        return (BookOpenResult) JsonUtils.fromJson(str, BookOpenResult.class, new Supplier() { // from class: com.sunia.HTREnginev2.et
            @Override // java.util.function.Supplier
            public final Object get() {
                return new BookOpenResult();
            }
        });
    }

    public int getBookSize() {
        return this.bookSize;
    }

    public HandleErrorCode getErr() {
        return this.err;
    }

    public long getHandle() {
        return this.handle;
    }

    public String getMessage() {
        return this.message;
    }

    public void setBookSize(int i) {
        this.bookSize = i;
    }

    public void setErr(HandleErrorCode handleErrorCode) {
        this.err = handleErrorCode;
    }

    public void setHandle(long j) {
        this.handle = j;
    }

    public void setMessage(String str) {
        this.message = str;
    }

    public String toString() {
        return "BookOpenResult{handle=" + this.handle + ", bookSize=" + this.bookSize + ", err=" + this.err + ", message='" + this.message + Chars.QUOTE + '}';
    }

    public BookOpenResult(long j, int i, int i2, String str) {
        this.err = HandleErrorCode.UNKNOWN;
        this.handle = j;
        this.bookSize = i;
        this.err = HandleErrorCode.valueOf(i2);
        this.message = str;
    }
}
