package com.onyx.android.sdk.textbox.event;

import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;

@Metadata(m61527d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\t\u0018\u0000 \n2\u00020\u0001:\u0001\nB\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\b\u0010\tR\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u000b"}, m61528d2 = {"Lcom/onyx/android/sdk/textbox/event/EditorLoadFontResultEvent;", "", "", "a", "I", "getCode", "()I", "code", Constants.CONSTRUCTOR_NAME, "(I)V", "Companion", "sdk-textbox_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class EditorLoadFontResultEvent {
    public static final int NETWORK_ERROR = 2;
    public static final int SUCCESS = 0;
    public static final int SYNTAX_ERROR = 1;

    /* renamed from: a, reason: from kotlin metadata */
    public final int code;

    public EditorLoadFontResultEvent(int i) {
        this.code = i;
    }

    public final int getCode() {
        return this.code;
    }
}
