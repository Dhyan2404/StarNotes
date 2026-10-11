.class public final Lcom/couchbase/lite/Collation$Unicode;
.super Lcom/couchbase/lite/Collation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/couchbase/lite/Collation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Unicode"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "user.language"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/couchbase/lite/Collation;-><init>(ZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public setIgnoreAccents(Z)Lcom/couchbase/lite/Collation$Unicode;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-super {p0, p1}, Lcom/couchbase/lite/Collation;->setIgnoreAccents(Z)Lcom/couchbase/lite/Collation;

    move-result-object p0

    check-cast p0, Lcom/couchbase/lite/Collation$Unicode;

    return-object p0
.end method

.method public bridge synthetic setIgnoreAccents(Z)Lcom/couchbase/lite/Collation;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/couchbase/lite/Collation$Unicode;->setIgnoreAccents(Z)Lcom/couchbase/lite/Collation$Unicode;

    move-result-object p0

    return-object p0
.end method

.method public setIgnoreCase(Z)Lcom/couchbase/lite/Collation$Unicode;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-super {p0, p1}, Lcom/couchbase/lite/Collation;->setIgnoreCase(Z)Lcom/couchbase/lite/Collation;

    move-result-object p0

    check-cast p0, Lcom/couchbase/lite/Collation$Unicode;

    return-object p0
.end method

.method public bridge synthetic setIgnoreCase(Z)Lcom/couchbase/lite/Collation;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/couchbase/lite/Collation$Unicode;->setIgnoreCase(Z)Lcom/couchbase/lite/Collation$Unicode;

    move-result-object p0

    return-object p0
.end method

.method public setLocale(Ljava/lang/String;)Lcom/couchbase/lite/Collation$Unicode;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-super {p0, p1}, Lcom/couchbase/lite/Collation;->setLocale(Ljava/lang/String;)Lcom/couchbase/lite/Collation;

    move-result-object p0

    check-cast p0, Lcom/couchbase/lite/Collation$Unicode;

    return-object p0
.end method

.method public bridge synthetic setLocale(Ljava/lang/String;)Lcom/couchbase/lite/Collation;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/couchbase/lite/Collation$Unicode;->setLocale(Ljava/lang/String;)Lcom/couchbase/lite/Collation$Unicode;

    move-result-object p0

    return-object p0
.end method
