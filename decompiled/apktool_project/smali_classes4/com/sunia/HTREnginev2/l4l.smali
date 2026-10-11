.class public final synthetic Lcom/sunia/HTREnginev2/l4l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/internal/utils/PlatformUtils$Base64Decoder;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final decodeString(Ljava/lang/String;)[B
    .locals 0

    invoke-static {p1}, Lcom/couchbase/lite/internal/utils/PlatformUtilsDelegate;->b(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method
