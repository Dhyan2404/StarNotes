package com.onyx.android.sdk.reader.impl;

import com.onyx.android.sdk.reader.api.ReaderPageType;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\n\u0018\u0000 \u00112\u00020\u0001:\u0001\u0011B\u0011\u0012\b\b\u0002\u0010\u000f\u001a\u00020\b¢\u0006\u0004\b\u0010\u0010\u000eJ\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0004\u001a\u00020\u0002J\b\u0010\u0006\u001a\u00020\u0005H\u0016J\b\u0010\u0007\u001a\u00020\u0005H\u0016R\"\u0010\u000f\u001a\u00020\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000e¨\u0006\u0012"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/impl/ReaderPageTypeImpl;", "Lcom/onyx/android/sdk/reader/api/ReaderPageType;", "", "addTextPageFlag", "addOnyxPageFlag", "", "isTextPage", "isOnyxPage", "", "a", "I", "getPageType", "()I", "setPageType", "(I)V", "pageType", Constants.CONSTRUCTOR_NAME, "Companion", "sdk-readercore_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class ReaderPageTypeImpl implements ReaderPageType {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE;
    public static final int PAGE_TYPE_ONYX_PAGE = 2;
    public static final int PAGE_TYPE_TEXT_PAGE = 1;
    public static final int PAGE_TYPE_UNKNOWN = 0;

    /* renamed from: b */
    @NotNull
    public static final ReaderPageType f44872b;

    /* renamed from: a, reason: from kotlin metadata */
    public int pageType;

    @Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u0011\u0010\u0007\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u000b"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/impl/ReaderPageTypeImpl$Companion;", "", "()V", "PAGE_TYPE_ONYX_PAGE", "", "PAGE_TYPE_TEXT_PAGE", "PAGE_TYPE_UNKNOWN", "dummy", "Lcom/onyx/android/sdk/reader/api/ReaderPageType;", "getDummy", "()Lcom/onyx/android/sdk/reader/api/ReaderPageType;", "sdk-readercore_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final ReaderPageType getDummy() {
            return ReaderPageTypeImpl.f44872b;
        }

        public Companion() {
        }
    }

    static {
        DefaultConstructorMarker defaultConstructorMarker = null;
        INSTANCE = new Companion(defaultConstructorMarker);
        f44872b = new ReaderPageTypeImpl(0, 1, defaultConstructorMarker);
    }

    public ReaderPageTypeImpl() {
        this(0, 1, null);
    }

    public final void addOnyxPageFlag() {
        this.pageType |= 2;
    }

    public final void addTextPageFlag() {
        this.pageType |= 1;
    }

    public final int getPageType() {
        return this.pageType;
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderPageType
    public boolean isOnyxPage() {
        return (this.pageType & 2) == 2;
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderPageType
    public boolean isTextPage() {
        return (this.pageType & 1) == 1;
    }

    public final void setPageType(int i) {
        this.pageType = i;
    }

    public ReaderPageTypeImpl(int i) {
        this.pageType = i;
    }

    public /* synthetic */ ReaderPageTypeImpl(int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? 0 : i);
    }
}
