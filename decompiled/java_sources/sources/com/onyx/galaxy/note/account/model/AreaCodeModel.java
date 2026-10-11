package com.onyx.galaxy.note.account.model;

import com.google.i18n.phonenumbers.PhoneNumberUtil;
import com.sun.org.apache.xalan.internal.templates.Constants;
import com.sunia.HTREnginev2.sod;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\r\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002¢\u0006\u0004\b\u0017\u0010\u0018J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0004\u001a\u00020\u0002HÆ\u0003J\u001d\u0010\u0007\u001a\u00020\u00002\b\b\u0002\u0010\u0005\u001a\u00020\u00022\b\b\u0002\u0010\u0006\u001a\u00020\u0002HÆ\u0001J\t\u0010\b\u001a\u00020\u0002HÖ\u0001J\t\u0010\n\u001a\u00020\tHÖ\u0001J\u0013\u0010\r\u001a\u00020\f2\b\u0010\u000b\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0017\u0010\u0005\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011R\u0017\u0010\u0006\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0012\u0010\u000f\u001a\u0004\b\u0013\u0010\u0011R\u0017\u0010\u0016\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0014\u0010\u000f\u001a\u0004\b\u0015\u0010\u0011¨\u0006\u0019"}, m61528d2 = {"Lcom/onyx/galaxy/note/account/model/AreaCodeModel;", "", "", "component1", "component2", sod.f84350C, "code", "copy", "toString", "", "hashCode", Constants.ATTRVAL_OTHER, "", "equals", "a", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.STRING_SIG, "getCountry", "()Ljava/lang/String;", "b", "getCode", "c", "getTitle", "title", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;Ljava/lang/String;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final /* data */ class AreaCodeModel {

    /* renamed from: a, reason: from kotlin metadata and from toString */
    @NotNull
    public final String country;

    /* renamed from: b, reason: from kotlin metadata and from toString */
    @NotNull
    public final String code;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public final String title;

    public AreaCodeModel(@NotNull String country, @NotNull String code) {
        Intrinsics.checkNotNullParameter(country, "country");
        Intrinsics.checkNotNullParameter(code, "code");
        this.country = country;
        this.code = code;
        this.title = country + PhoneNumberUtil.f36455s + code;
    }

    public static /* synthetic */ AreaCodeModel copy$default(AreaCodeModel areaCodeModel, String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = areaCodeModel.country;
        }
        if ((i & 2) != 0) {
            str2 = areaCodeModel.code;
        }
        return areaCodeModel.copy(str, str2);
    }

    @NotNull
    /* renamed from: component1, reason: from getter */
    public final String getCountry() {
        return this.country;
    }

    @NotNull
    /* renamed from: component2, reason: from getter */
    public final String getCode() {
        return this.code;
    }

    @NotNull
    public final AreaCodeModel copy(@NotNull String country, @NotNull String code) {
        Intrinsics.checkNotNullParameter(country, "country");
        Intrinsics.checkNotNullParameter(code, "code");
        return new AreaCodeModel(country, code);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof AreaCodeModel)) {
            return false;
        }
        AreaCodeModel areaCodeModel = (AreaCodeModel) other;
        return Intrinsics.areEqual(this.country, areaCodeModel.country) && Intrinsics.areEqual(this.code, areaCodeModel.code);
    }

    @NotNull
    public final String getCode() {
        return this.code;
    }

    @NotNull
    public final String getCountry() {
        return this.country;
    }

    @NotNull
    public final String getTitle() {
        return this.title;
    }

    public int hashCode() {
        return (this.country.hashCode() * 31) + this.code.hashCode();
    }

    @NotNull
    public String toString() {
        return "AreaCodeModel(country=" + this.country + ", code=" + this.code + ')';
    }
}
