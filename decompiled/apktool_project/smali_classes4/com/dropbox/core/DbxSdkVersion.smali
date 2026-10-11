.class public Lcom/dropbox/core/DbxSdkVersion;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final Version:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/dropbox/core/DbxSdkVersion;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/DbxSdkVersion;->Version:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    const-string v0, "3.1.5"

    return-object v0
.end method
