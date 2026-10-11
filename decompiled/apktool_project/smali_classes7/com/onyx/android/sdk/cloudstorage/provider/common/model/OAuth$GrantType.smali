.class public final enum Lcom/onyx/android/sdk/cloudstorage/provider/common/model/OAuth$GrantType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/cloudstorage/provider/common/model/OAuth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GrantType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/onyx/android/sdk/cloudstorage/provider/common/model/OAuth$GrantType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0016j\u0002\u0008\u0005j\u0002\u0008\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/onyx/android/sdk/cloudstorage/provider/common/model/OAuth$GrantType;",
        "",
        "(Ljava/lang/String;I)V",
        "toString",
        "",
        "AUTHORIZATION_CODE",
        "REFRESH_TOKEN",
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

.field private static final synthetic $VALUES:[Lcom/onyx/android/sdk/cloudstorage/provider/common/model/OAuth$GrantType;

.field public static final enum AUTHORIZATION_CODE:Lcom/onyx/android/sdk/cloudstorage/provider/common/model/OAuth$GrantType;

.field public static final enum REFRESH_TOKEN:Lcom/onyx/android/sdk/cloudstorage/provider/common/model/OAuth$GrantType;


# direct methods
.method private static final synthetic $values()[Lcom/onyx/android/sdk/cloudstorage/provider/common/model/OAuth$GrantType;
    .locals 2

    sget-object v0, Lcom/onyx/android/sdk/cloudstorage/provider/common/model/OAuth$GrantType;->AUTHORIZATION_CODE:Lcom/onyx/android/sdk/cloudstorage/provider/common/model/OAuth$GrantType;

    sget-object v1, Lcom/onyx/android/sdk/cloudstorage/provider/common/model/OAuth$GrantType;->REFRESH_TOKEN:Lcom/onyx/android/sdk/cloudstorage/provider/common/model/OAuth$GrantType;

    filled-new-array {v0, v1}, [Lcom/onyx/android/sdk/cloudstorage/provider/common/model/OAuth$GrantType;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/provider/common/model/OAuth$GrantType;

    const-string v1, "AUTHORIZATION_CODE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/cloudstorage/provider/common/model/OAuth$GrantType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/android/sdk/cloudstorage/provider/common/model/OAuth$GrantType;->AUTHORIZATION_CODE:Lcom/onyx/android/sdk/cloudstorage/provider/common/model/OAuth$GrantType;

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/provider/common/model/OAuth$GrantType;

    const-string v1, "REFRESH_TOKEN"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/cloudstorage/provider/common/model/OAuth$GrantType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/android/sdk/cloudstorage/provider/common/model/OAuth$GrantType;->REFRESH_TOKEN:Lcom/onyx/android/sdk/cloudstorage/provider/common/model/OAuth$GrantType;

    invoke-static {}, Lcom/onyx/android/sdk/cloudstorage/provider/common/model/OAuth$GrantType;->$values()[Lcom/onyx/android/sdk/cloudstorage/provider/common/model/OAuth$GrantType;

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/cloudstorage/provider/common/model/OAuth$GrantType;->$VALUES:[Lcom/onyx/android/sdk/cloudstorage/provider/common/model/OAuth$GrantType;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/cloudstorage/provider/common/model/OAuth$GrantType;->$ENTRIES:Lkotlin/enums/EnumEntries;

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
            "Lcom/onyx/android/sdk/cloudstorage/provider/common/model/OAuth$GrantType;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/cloudstorage/provider/common/model/OAuth$GrantType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/onyx/android/sdk/cloudstorage/provider/common/model/OAuth$GrantType;
    .locals 1

    const-class v0, Lcom/onyx/android/sdk/cloudstorage/provider/common/model/OAuth$GrantType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/cloudstorage/provider/common/model/OAuth$GrantType;

    return-object p0
.end method

.method public static values()[Lcom/onyx/android/sdk/cloudstorage/provider/common/model/OAuth$GrantType;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/cloudstorage/provider/common/model/OAuth$GrantType;->$VALUES:[Lcom/onyx/android/sdk/cloudstorage/provider/common/model/OAuth$GrantType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/onyx/android/sdk/cloudstorage/provider/common/model/OAuth$GrantType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "getDefault(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "this as java.lang.String).toLowerCase(locale)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
