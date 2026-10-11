package com.onyx.galaxy.note.settings.data;

import android.net.Uri;
import com.miui.penengine.p015e.C6997f;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\u000b\n\u0002\b\u0019\b\u0086\b\u0018\u00002\u00020\u0001BC\u0012\u0006\u0010\f\u001a\u00020\u0002\u0012\u0006\u0010\r\u001a\u00020\u0004\u0012\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u0006\u0010\u000f\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0010\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b-\u0010.J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0005\u001a\u00020\u0004HÆ\u0003J\u000f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006HÆ\u0003J\t\u0010\t\u001a\u00020\u0004HÆ\u0003J\t\u0010\n\u001a\u00020\u0004HÆ\u0003J\u000b\u0010\u000b\u001a\u0004\u0018\u00010\u0004HÆ\u0003JM\u0010\u0012\u001a\u00020\u00002\b\b\u0002\u0010\f\u001a\u00020\u00022\b\b\u0002\u0010\r\u001a\u00020\u00042\u000e\b\u0002\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\b\b\u0002\u0010\u000f\u001a\u00020\u00042\b\b\u0002\u0010\u0010\u001a\u00020\u00042\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0004HÆ\u0001J\t\u0010\u0013\u001a\u00020\u0004HÖ\u0001J\t\u0010\u0014\u001a\u00020\u0002HÖ\u0001J\u0013\u0010\u0017\u001a\u00020\u00162\b\u0010\u0015\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0017\u0010\f\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u001bR\u0017\u0010\r\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u001c\u0010\u001d\u001a\u0004\b\u001e\u0010\u001fR\u001d\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00070\u00068\u0006¢\u0006\f\n\u0004\b \u0010!\u001a\u0004\b\"\u0010#R\u0017\u0010\u000f\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b$\u0010\u001d\u001a\u0004\b%\u0010\u001fR\"\u0010\u0010\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b&\u0010\u001d\u001a\u0004\b'\u0010\u001f\"\u0004\b(\u0010)R$\u0010\u0011\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b*\u0010\u001d\u001a\u0004\b+\u0010\u001f\"\u0004\b,\u0010)¨\u0006/"}, m61528d2 = {"Lcom/onyx/galaxy/note/settings/data/SubmitFeedbackContext;", "", "", "component1", "", "component2", "", "Landroid/net/Uri;", "component3", "component4", "component5", "component6", "type", "memo", "pictures", "email", "zipFileUrl", "key", "copy", "toString", "hashCode", Constants.ATTRVAL_OTHER, "", "equals", "a", "I", "getType", "()I", "b", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.STRING_SIG, "getMemo", "()Ljava/lang/String;", "c", "Ljava/util/List;", "getPictures", "()Ljava/util/List;", "d", "getEmail", "e", "getZipFileUrl", "setZipFileUrl", "(Ljava/lang/String;)V", C6997f.f39671c, "getKey", "setKey", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(ILjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final /* data */ class SubmitFeedbackContext {

    /* renamed from: a, reason: from kotlin metadata and from toString */
    public final int type;

    /* renamed from: b, reason: from kotlin metadata and from toString */
    @NotNull
    public final String memo;

    /* renamed from: c, reason: from kotlin metadata and from toString */
    @NotNull
    public final List<Uri> pictures;

    /* renamed from: d, reason: from kotlin metadata and from toString */
    @NotNull
    public final String email;

    /* renamed from: e, reason: from kotlin metadata and from toString */
    @NotNull
    public String zipFileUrl;

    /* renamed from: f, reason: from kotlin metadata and from toString */
    @Nullable
    public String key;

    public SubmitFeedbackContext(int i, @NotNull String memo, @NotNull List<Uri> pictures, @NotNull String email, @NotNull String zipFileUrl, @Nullable String str) {
        Intrinsics.checkNotNullParameter(memo, "memo");
        Intrinsics.checkNotNullParameter(pictures, "pictures");
        Intrinsics.checkNotNullParameter(email, "email");
        Intrinsics.checkNotNullParameter(zipFileUrl, "zipFileUrl");
        this.type = i;
        this.memo = memo;
        this.pictures = pictures;
        this.email = email;
        this.zipFileUrl = zipFileUrl;
        this.key = str;
    }

    public static /* synthetic */ SubmitFeedbackContext copy$default(SubmitFeedbackContext submitFeedbackContext, int i, String str, List list, String str2, String str3, String str4, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = submitFeedbackContext.type;
        }
        if ((i2 & 2) != 0) {
            str = submitFeedbackContext.memo;
        }
        String str5 = str;
        if ((i2 & 4) != 0) {
            list = submitFeedbackContext.pictures;
        }
        List list2 = list;
        if ((i2 & 8) != 0) {
            str2 = submitFeedbackContext.email;
        }
        String str6 = str2;
        if ((i2 & 16) != 0) {
            str3 = submitFeedbackContext.zipFileUrl;
        }
        String str7 = str3;
        if ((i2 & 32) != 0) {
            str4 = submitFeedbackContext.key;
        }
        return submitFeedbackContext.copy(i, str5, list2, str6, str7, str4);
    }

    /* renamed from: component1, reason: from getter */
    public final int getType() {
        return this.type;
    }

    @NotNull
    /* renamed from: component2, reason: from getter */
    public final String getMemo() {
        return this.memo;
    }

    @NotNull
    public final List<Uri> component3() {
        return this.pictures;
    }

    @NotNull
    /* renamed from: component4, reason: from getter */
    public final String getEmail() {
        return this.email;
    }

    @NotNull
    /* renamed from: component5, reason: from getter */
    public final String getZipFileUrl() {
        return this.zipFileUrl;
    }

    @Nullable
    /* renamed from: component6, reason: from getter */
    public final String getKey() {
        return this.key;
    }

    @NotNull
    public final SubmitFeedbackContext copy(int type, @NotNull String memo, @NotNull List<Uri> pictures, @NotNull String email, @NotNull String zipFileUrl, @Nullable String key) {
        Intrinsics.checkNotNullParameter(memo, "memo");
        Intrinsics.checkNotNullParameter(pictures, "pictures");
        Intrinsics.checkNotNullParameter(email, "email");
        Intrinsics.checkNotNullParameter(zipFileUrl, "zipFileUrl");
        return new SubmitFeedbackContext(type, memo, pictures, email, zipFileUrl, key);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof SubmitFeedbackContext)) {
            return false;
        }
        SubmitFeedbackContext submitFeedbackContext = (SubmitFeedbackContext) other;
        return this.type == submitFeedbackContext.type && Intrinsics.areEqual(this.memo, submitFeedbackContext.memo) && Intrinsics.areEqual(this.pictures, submitFeedbackContext.pictures) && Intrinsics.areEqual(this.email, submitFeedbackContext.email) && Intrinsics.areEqual(this.zipFileUrl, submitFeedbackContext.zipFileUrl) && Intrinsics.areEqual(this.key, submitFeedbackContext.key);
    }

    @NotNull
    public final String getEmail() {
        return this.email;
    }

    @Nullable
    public final String getKey() {
        return this.key;
    }

    @NotNull
    public final String getMemo() {
        return this.memo;
    }

    @NotNull
    public final List<Uri> getPictures() {
        return this.pictures;
    }

    public final int getType() {
        return this.type;
    }

    @NotNull
    public final String getZipFileUrl() {
        return this.zipFileUrl;
    }

    public int hashCode() {
        int hashCode = ((((((((Integer.hashCode(this.type) * 31) + this.memo.hashCode()) * 31) + this.pictures.hashCode()) * 31) + this.email.hashCode()) * 31) + this.zipFileUrl.hashCode()) * 31;
        String str = this.key;
        return hashCode + (str == null ? 0 : str.hashCode());
    }

    public final void setKey(@Nullable String str) {
        this.key = str;
    }

    public final void setZipFileUrl(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.zipFileUrl = str;
    }

    @NotNull
    public String toString() {
        return "SubmitFeedbackContext(type=" + this.type + ", memo=" + this.memo + ", pictures=" + this.pictures + ", email=" + this.email + ", zipFileUrl=" + this.zipFileUrl + ", key=" + this.key + ')';
    }

    public /* synthetic */ SubmitFeedbackContext(int i, String str, List list, String str2, String str3, String str4, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, str, list, str2, (i2 & 16) != 0 ? "" : str3, (i2 & 32) != 0 ? "" : str4);
    }
}
