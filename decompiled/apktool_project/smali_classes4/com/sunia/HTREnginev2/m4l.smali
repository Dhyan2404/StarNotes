.class public final synthetic Lcom/sunia/HTREnginev2/m4l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/internal/utils/PlatformUtils$Base64Encoder;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final encodeToString([B)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Lcom/couchbase/lite/internal/utils/PlatformUtilsDelegate;->a([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
