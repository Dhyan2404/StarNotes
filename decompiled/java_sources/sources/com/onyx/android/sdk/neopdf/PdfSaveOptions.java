package com.onyx.android.sdk.neopdf;

import androidx.core.app.NotificationCompat;
import java.io.Serializable;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\b\n\u0002\b\f\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0014\u001a\u00020\u00002\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004J\u0010\u0010\u0015\u001a\u00020\u00002\b\u0010\b\u001a\u0004\u0018\u00010\u0004J\u0010\u0010\u0016\u001a\u00020\u00002\b\u0010\n\u001a\u0004\u0018\u00010\u0004J\u0010\u0010\u0017\u001a\u00020\u00002\b\u0010\f\u001a\u0004\u0018\u00010\u0004J\u000e\u0010\u0018\u001a\u00020\u00002\u0006\u0010\u000f\u001a\u00020\u000eJ\u0010\u0010\u0019\u001a\u00020\u00002\b\u0010\u0012\u001a\u0004\u0018\u00010\u0004R\"\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0004@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\"\u0010\b\u001a\u0004\u0018\u00010\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0004@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\u0007R\"\u0010\n\u001a\u0004\u0018\u00010\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0004@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\u0007R\"\u0010\f\u001a\u0004\u0018\u00010\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0004@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u0007R\u001e\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0003\u001a\u00020\u000e@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\"\u0010\u0012\u001a\u0004\u0018\u00010\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0004@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0007¨\u0006\u001a"}, m61528d2 = {"Lcom/onyx/android/sdk/neopdf/PdfSaveOptions;", "Ljava/io/Serializable;", "()V", "<set-?>", "", NotificationCompat.CarExtender.f4973i, "getAuthor", "()Ljava/lang/String;", "creator", "getCreator", "onyxTag", "getOnyxTag", "producer", "getProducer", "", "saveQuality", "getSaveQuality", "()I", "title", "getTitle", "setAuthor", "setCreator", "setOnyxTag", "setProducer", "setSaveQuality", "setTitle", "sdk-neopdf_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class PdfSaveOptions implements Serializable {

    @Nullable
    private String author;

    @Nullable
    private String creator;

    @Nullable
    private String onyxTag;

    @Nullable
    private String producer;
    private int saveQuality = 100;

    @Nullable
    private String title;

    @Nullable
    public final String getAuthor() {
        return this.author;
    }

    @Nullable
    public final String getCreator() {
        return this.creator;
    }

    @Nullable
    public final String getOnyxTag() {
        return this.onyxTag;
    }

    @Nullable
    public final String getProducer() {
        return this.producer;
    }

    public final int getSaveQuality() {
        return this.saveQuality;
    }

    @Nullable
    public final String getTitle() {
        return this.title;
    }

    @NotNull
    public final PdfSaveOptions setAuthor(@Nullable String author) {
        this.author = author;
        return this;
    }

    @NotNull
    public final PdfSaveOptions setCreator(@Nullable String creator) {
        this.creator = creator;
        return this;
    }

    @NotNull
    public final PdfSaveOptions setOnyxTag(@Nullable String onyxTag) {
        this.onyxTag = onyxTag;
        return this;
    }

    @NotNull
    public final PdfSaveOptions setProducer(@Nullable String producer) {
        this.producer = producer;
        return this;
    }

    @NotNull
    public final PdfSaveOptions setSaveQuality(int saveQuality) {
        this.saveQuality = saveQuality;
        return this;
    }

    @NotNull
    public final PdfSaveOptions setTitle(@Nullable String title) {
        this.title = title;
        return this;
    }
}
