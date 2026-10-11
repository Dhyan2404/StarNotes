.class public final Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/Scope;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/Scope$FILES;,
        Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/Scope$NOTES;,
        Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/Scope$OFFICE;,
        Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/Scope$USER;,
        Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/Scope$WL;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000b\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0005\n\u000b\u000c\r\u000eB\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002R\u0014\u0010\u0006\u001a\u00020\u00048\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/Scope;",
        "",
        "",
        "res",
        "",
        "a",
        "DELIM",
        "Ljava/lang/String;",
        "<init>",
        "()V",
        "FILES",
        "NOTES",
        "OFFICE",
        "USER",
        "WL",
        "sdk-cloudstorage_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final DELIM:Ljava/lang/String; = "\n---\n"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final INSTANCE:Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/Scope;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/Scope;

    invoke-direct {v0}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/Scope;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/Scope;->INSTANCE:Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/Scope;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getString(Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/Scope;I)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/Scope;->a(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(I)Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
