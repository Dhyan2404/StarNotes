.class public final Lcom/dropbox/core/v1/DbxWriteMode;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Lcom/dropbox/core/v1/DbxWriteMode;

.field public static final c:Lcom/dropbox/core/v1/DbxWriteMode;


# instance fields
.field public final a:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/dropbox/core/v1/DbxWriteMode;

    const-string v1, "false"

    const-string v2, "overwrite"

    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/dropbox/core/v1/DbxWriteMode;-><init>([Ljava/lang/String;)V

    sput-object v0, Lcom/dropbox/core/v1/DbxWriteMode;->b:Lcom/dropbox/core/v1/DbxWriteMode;

    new-instance v0, Lcom/dropbox/core/v1/DbxWriteMode;

    const-string v1, "true"

    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/dropbox/core/v1/DbxWriteMode;-><init>([Ljava/lang/String;)V

    sput-object v0, Lcom/dropbox/core/v1/DbxWriteMode;->c:Lcom/dropbox/core/v1/DbxWriteMode;

    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dropbox/core/v1/DbxWriteMode;->a:[Ljava/lang/String;

    return-void
.end method

.method public static add()Lcom/dropbox/core/v1/DbxWriteMode;
    .locals 1

    sget-object v0, Lcom/dropbox/core/v1/DbxWriteMode;->b:Lcom/dropbox/core/v1/DbxWriteMode;

    return-object v0
.end method

.method public static force()Lcom/dropbox/core/v1/DbxWriteMode;
    .locals 1

    sget-object v0, Lcom/dropbox/core/v1/DbxWriteMode;->c:Lcom/dropbox/core/v1/DbxWriteMode;

    return-object v0
.end method

.method public static update(Ljava/lang/String;)Lcom/dropbox/core/v1/DbxWriteMode;
    .locals 2

    new-instance v0, Lcom/dropbox/core/v1/DbxWriteMode;

    const-string v1, "parent_rev"

    filled-new-array {v1, p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/dropbox/core/v1/DbxWriteMode;-><init>([Ljava/lang/String;)V

    return-object v0
.end method
