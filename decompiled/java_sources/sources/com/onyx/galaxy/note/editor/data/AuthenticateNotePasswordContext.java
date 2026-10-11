package com.onyx.galaxy.note.editor.data;

import android.content.Context;
import com.onyx.galaxy.note.editor.view.dialog.NoteAuthenticatePasswordDialog;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u000b\u001a\u00020\b¢\u0006\u0004\b \u0010!R\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0017\u0010\u000b\u001a\u00020\b8\u0006¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\fR6\u0010\u0017\u001a\u0016\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u0010\u0018\u00010\r8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R*\u0010\u001f\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u00188\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001e¨\u0006\""}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/data/AuthenticateNotePasswordContext;", "", "Landroid/content/Context;", "a", "Landroid/content/Context;", "getActivityContext", "()Landroid/content/Context;", "activityContext", "", "b", Constants.HASIDCALL_INDEX_SIG, "isDelete", Constants.BOOLEAN_VALUE_SIG, "Lkotlin/Function2;", "Lcom/onyx/galaxy/note/editor/view/dialog/NoteAuthenticatePasswordDialog;", "", "", "c", "Lkotlin/jvm/functions/Function2;", "getConfirmCallback", "()Lkotlin/jvm/functions/Function2;", "setConfirmCallback", "(Lkotlin/jvm/functions/Function2;)V", "confirmCallback", "Lkotlin/Function0;", "d", "Lkotlin/jvm/functions/Function0;", "getCancelCallback", "()Lkotlin/jvm/functions/Function0;", "setCancelCallback", "(Lkotlin/jvm/functions/Function0;)V", "cancelCallback", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Z)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class AuthenticateNotePasswordContext {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final Context activityContext;

    /* renamed from: b, reason: from kotlin metadata */
    public final boolean isDelete;

    /* renamed from: c, reason: from kotlin metadata */
    @Nullable
    public Function2<? super NoteAuthenticatePasswordDialog, ? super String, Unit> confirmCallback;

    /* renamed from: d, reason: from kotlin metadata */
    @Nullable
    public Function0<Unit> cancelCallback;

    public AuthenticateNotePasswordContext(@NotNull Context activityContext, boolean z) {
        Intrinsics.checkNotNullParameter(activityContext, "activityContext");
        this.activityContext = activityContext;
        this.isDelete = z;
    }

    @NotNull
    public final Context getActivityContext() {
        return this.activityContext;
    }

    @Nullable
    public final Function0<Unit> getCancelCallback() {
        return this.cancelCallback;
    }

    @Nullable
    public final Function2<NoteAuthenticatePasswordDialog, String, Unit> getConfirmCallback() {
        return this.confirmCallback;
    }

    /* renamed from: isDelete, reason: from getter */
    public final boolean getIsDelete() {
        return this.isDelete;
    }

    public final void setCancelCallback(@Nullable Function0<Unit> function0) {
        this.cancelCallback = function0;
    }

    public final void setConfirmCallback(@Nullable Function2<? super NoteAuthenticatePasswordDialog, ? super String, Unit> function2) {
        this.confirmCallback = function2;
    }

    public /* synthetic */ AuthenticateNotePasswordContext(Context context, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i & 2) != 0 ? false : z);
    }
}
