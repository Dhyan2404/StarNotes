package com.onyx.galaxy.note.editor.data;

import com.onyx.android.sdk.base.utils.ResManager;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\n\u0018\u0000 \u00172\u00020\u0001:\u0001\u0017B\u0007¢\u0006\u0004\b\u0015\u0010\u0016R\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\"\u0010\r\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\n\u0010\u0004\u001a\u0004\b\u000b\u0010\u0006\"\u0004\b\f\u0010\bR\"\u0010\u0011\u001a\u00020\u000e8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014¨\u0006\u0018"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/data/CounterWindowLocationModel;", "", "", "a", "I", "getX", "()I", "setX", "(I)V", "x", "b", "getY", "setY", "y", "", "c", Constants.HASIDCALL_INDEX_SIG, "isExpand", Constants.BOOLEAN_VALUE_SIG, "setExpand", "(Z)V", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "Companion", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class CounterWindowLocationModel {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: a, reason: from kotlin metadata */
    public int x;

    /* renamed from: b, reason: from kotlin metadata */
    public int y;

    /* renamed from: c, reason: from kotlin metadata */
    public boolean isExpand = true;

    @Metadata(m61527d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004¨\u0006\u0005"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/data/CounterWindowLocationModel$Companion;", "", "()V", "defaultValue", "Lcom/onyx/galaxy/note/editor/data/CounterWindowLocationModel;", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final CounterWindowLocationModel defaultValue() {
            CounterWindowLocationModel counterWindowLocationModel = new CounterWindowLocationModel();
            counterWindowLocationModel.setX((int) ResManager.INSTANCE.getScreenWidth());
            counterWindowLocationModel.setExpand(true);
            return counterWindowLocationModel;
        }

        public Companion() {
        }
    }

    public final int getX() {
        return this.x;
    }

    public final int getY() {
        return this.y;
    }

    /* renamed from: isExpand, reason: from getter */
    public final boolean getIsExpand() {
        return this.isExpand;
    }

    public final void setExpand(boolean z) {
        this.isExpand = z;
    }

    public final void setX(int i) {
        this.x = i;
    }

    public final void setY(int i) {
        this.y = i;
    }
}
