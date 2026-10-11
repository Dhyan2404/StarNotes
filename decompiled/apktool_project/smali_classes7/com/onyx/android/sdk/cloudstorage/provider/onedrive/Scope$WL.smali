.class public final enum Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/Scope$WL;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/Scope;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WL"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/Scope$WL;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0008\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u000b\u001a\u00020\u0006H\u0016R\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\t\u001a\u00020\u00068F\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u0008j\u0002\u0008\u000cj\u0002\u0008\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/Scope$WL;",
        "",
        "desc",
        "",
        "(Ljava/lang/String;II)V",
        "description",
        "",
        "getDescription",
        "()Ljava/lang/String;",
        "scope",
        "getScope",
        "toString",
        "SIGN_IN",
        "OFFLINE_ACCESS",
        "sdk-cloudstorage_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/Scope$WL;

.field public static final enum OFFLINE_ACCESS:Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/Scope$WL;

.field public static final enum SIGN_IN:Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/Scope$WL;


# instance fields
.field private final description:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method private static final synthetic $values()[Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/Scope$WL;
    .locals 2

    sget-object v0, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/Scope$WL;->SIGN_IN:Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/Scope$WL;

    sget-object v1, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/Scope$WL;->OFFLINE_ACCESS:Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/Scope$WL;

    filled-new-array {v0, v1}, [Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/Scope$WL;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/Scope$WL;

    const/4 v1, 0x0

    sget v2, Lcom/onyx/android/sdk/cloudstorage/R$string;->wl_signin:I

    const-string v3, "SIGN_IN"

    invoke-direct {v0, v3, v1, v2}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/Scope$WL;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/Scope$WL;->SIGN_IN:Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/Scope$WL;

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/Scope$WL;

    const/4 v1, 0x1

    sget v2, Lcom/onyx/android/sdk/cloudstorage/R$string;->wl_offline_access:I

    const-string v3, "OFFLINE_ACCESS"

    invoke-direct {v0, v3, v1, v2}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/Scope$WL;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/Scope$WL;->OFFLINE_ACCESS:Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/Scope$WL;

    invoke-static {}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/Scope$WL;->$values()[Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/Scope$WL;

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/Scope$WL;->$VALUES:[Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/Scope$WL;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/Scope$WL;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sget-object p1, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/Scope;->INSTANCE:Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/Scope;

    invoke-static {p1, p3}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/Scope;->access$getString(Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/Scope;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/Scope$WL;->description:Ljava/lang/String;

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/Scope$WL;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/Scope$WL;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/Scope$WL;
    .locals 1

    const-class v0, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/Scope$WL;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/Scope$WL;

    return-object p0
.end method

.method public static values()[Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/Scope$WL;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/Scope$WL;->$VALUES:[Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/Scope$WL;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/Scope$WL;

    return-object v0
.end method


# virtual methods
.method public final getDescription()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/Scope$WL;->description:Ljava/lang/String;

    return-object p0
.end method

.method public final getScope()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "wl."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/Scope$WL;->getScope()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n---\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/Scope$WL;->description:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
