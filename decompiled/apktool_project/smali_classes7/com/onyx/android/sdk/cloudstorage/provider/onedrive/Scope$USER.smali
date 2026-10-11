.class public final enum Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/Scope$USER;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/Scope;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "USER"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/Scope$USER;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0007\u001a\u00020\u0004H\u0016R\u0011\u0010\u0003\u001a\u00020\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/Scope$USER;",
        "",
        "(Ljava/lang/String;I)V",
        "scope",
        "",
        "getScope",
        "()Ljava/lang/String;",
        "toString",
        "READ",
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

.field private static final synthetic $VALUES:[Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/Scope$USER;

.field public static final enum READ:Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/Scope$USER;


# direct methods
.method private static final synthetic $values()[Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/Scope$USER;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/Scope$USER;->READ:Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/Scope$USER;

    filled-new-array {v0}, [Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/Scope$USER;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/Scope$USER;

    const-string v1, "READ"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/Scope$USER;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/Scope$USER;->READ:Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/Scope$USER;

    invoke-static {}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/Scope$USER;->$values()[Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/Scope$USER;

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/Scope$USER;->$VALUES:[Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/Scope$USER;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/Scope$USER;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/Scope$USER;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/Scope$USER;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/Scope$USER;
    .locals 1

    const-class v0, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/Scope$USER;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/Scope$USER;

    return-object p0
.end method

.method public static values()[Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/Scope$USER;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/Scope$USER;->$VALUES:[Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/Scope$USER;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/Scope$USER;

    return-object v0
.end method


# virtual methods
.method public final getScope()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "user."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Lkotlin/text/Regex;

    const-string v2, "_"

    invoke-direct {v1, v2}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    const-string v2, "."

    invoke-virtual {v1, p0, v2}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/Scope$USER;->getScope()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
