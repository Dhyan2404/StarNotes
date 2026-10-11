.class public final Lcom/dropbox/core/v1/DbxEntry$Folder;
.super Lcom/dropbox/core/v1/DbxEntry;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v1/DbxEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Folder"
.end annotation


# static fields
.field public static final Reader:Lcom/dropbox/core/json/JsonReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dropbox/core/json/JsonReader<",
            "Lcom/dropbox/core/v1/DbxEntry$Folder;",
            ">;"
        }
    .end annotation
.end field

.field public static final serialVersionUID:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/dropbox/core/v1/DbxEntry$Folder$a;

    invoke-direct {v0}, Lcom/dropbox/core/v1/DbxEntry$Folder$a;-><init>()V

    sput-object v0, Lcom/dropbox/core/v1/DbxEntry$Folder;->Reader:Lcom/dropbox/core/json/JsonReader;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/dropbox/core/v1/DbxEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ZLcom/dropbox/core/v1/DbxEntry$a;)V

    return-void
.end method


# virtual methods
.method public asFile()Lcom/dropbox/core/v1/DbxEntry$File;
    .locals 1

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "not a file"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public asFolder()Lcom/dropbox/core/v1/DbxEntry$Folder;
    .locals 0

    return-object p0
.end method

.method public equals(Lcom/dropbox/core/v1/DbxEntry$Folder;)Z
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v1/DbxEntry;->partialEquals(Lcom/dropbox/core/v1/DbxEntry;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    const-class v0, Lcom/dropbox/core/v1/DbxEntry$Folder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/dropbox/core/v1/DbxEntry$Folder;

    invoke-virtual {p0, p1}, Lcom/dropbox/core/v1/DbxEntry$Folder;->equals(Lcom/dropbox/core/v1/DbxEntry$Folder;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getTypeName()Ljava/lang/String;
    .locals 0

    const-string p0, "Folder"

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    invoke-virtual {p0}, Lcom/dropbox/core/v1/DbxEntry;->partialHashCode()I

    move-result p0

    return p0
.end method

.method public isFile()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isFolder()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
