.class public final enum Lcom/onyx/galaxy/note/account/data/PolicyType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/onyx/galaxy/note/account/data/PolicyType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u001b\u0008\u0002\u0012\u0008\u0008\u0001\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0001\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0005J\u0006\u0010\t\u001a\u00020\nR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\u0007j\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/account/data/PolicyType;",
        "",
        "titleRes",
        "",
        "urlRes",
        "(Ljava/lang/String;III)V",
        "getTitleRes",
        "()I",
        "getUrlRes",
        "getUrl",
        "",
        "SERVICE",
        "PRIVACY",
        "INFORMATION",
        "MEMBER_PAYMENT_AGREEMENT",
        "note_overseasRelease"
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

.field private static final synthetic $VALUES:[Lcom/onyx/galaxy/note/account/data/PolicyType;

.field public static final enum INFORMATION:Lcom/onyx/galaxy/note/account/data/PolicyType;

.field public static final enum MEMBER_PAYMENT_AGREEMENT:Lcom/onyx/galaxy/note/account/data/PolicyType;

.field public static final enum PRIVACY:Lcom/onyx/galaxy/note/account/data/PolicyType;

.field public static final enum SERVICE:Lcom/onyx/galaxy/note/account/data/PolicyType;


# instance fields
.field private final titleRes:I

.field private final urlRes:I


# direct methods
.method private static final synthetic $values()[Lcom/onyx/galaxy/note/account/data/PolicyType;
    .locals 4

    sget-object v0, Lcom/onyx/galaxy/note/account/data/PolicyType;->SERVICE:Lcom/onyx/galaxy/note/account/data/PolicyType;

    sget-object v1, Lcom/onyx/galaxy/note/account/data/PolicyType;->PRIVACY:Lcom/onyx/galaxy/note/account/data/PolicyType;

    sget-object v2, Lcom/onyx/galaxy/note/account/data/PolicyType;->INFORMATION:Lcom/onyx/galaxy/note/account/data/PolicyType;

    sget-object v3, Lcom/onyx/galaxy/note/account/data/PolicyType;->MEMBER_PAYMENT_AGREEMENT:Lcom/onyx/galaxy/note/account/data/PolicyType;

    filled-new-array {v0, v1, v2, v3}, [Lcom/onyx/galaxy/note/account/data/PolicyType;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/onyx/galaxy/note/account/data/PolicyType;

    sget v1, Lcom/onyx/galaxy/note/R$string;->dialog_policy_service_title:I

    sget v2, Lcom/onyx/galaxy/note/R$string;->star_note_service_url:I

    const-string v3, "SERVICE"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/onyx/galaxy/note/account/data/PolicyType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/onyx/galaxy/note/account/data/PolicyType;->SERVICE:Lcom/onyx/galaxy/note/account/data/PolicyType;

    new-instance v0, Lcom/onyx/galaxy/note/account/data/PolicyType;

    sget v1, Lcom/onyx/galaxy/note/R$string;->dialog_policy_privacy_title:I

    sget v2, Lcom/onyx/galaxy/note/R$string;->star_note_policy_url:I

    const-string v3, "PRIVACY"

    const/4 v4, 0x1

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/onyx/galaxy/note/account/data/PolicyType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/onyx/galaxy/note/account/data/PolicyType;->PRIVACY:Lcom/onyx/galaxy/note/account/data/PolicyType;

    new-instance v0, Lcom/onyx/galaxy/note/account/data/PolicyType;

    sget v1, Lcom/onyx/galaxy/note/R$string;->dialog_policy_information_title:I

    sget v2, Lcom/onyx/galaxy/note/R$string;->star_note_information_url:I

    const-string v3, "INFORMATION"

    const/4 v4, 0x2

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/onyx/galaxy/note/account/data/PolicyType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/onyx/galaxy/note/account/data/PolicyType;->INFORMATION:Lcom/onyx/galaxy/note/account/data/PolicyType;

    new-instance v0, Lcom/onyx/galaxy/note/account/data/PolicyType;

    sget v1, Lcom/onyx/galaxy/note/R$string;->dialog_policy_member_charge_title:I

    sget v2, Lcom/onyx/galaxy/note/R$string;->star_note_member_charge_url:I

    const-string v3, "MEMBER_PAYMENT_AGREEMENT"

    const/4 v4, 0x3

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/onyx/galaxy/note/account/data/PolicyType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/onyx/galaxy/note/account/data/PolicyType;->MEMBER_PAYMENT_AGREEMENT:Lcom/onyx/galaxy/note/account/data/PolicyType;

    invoke-static {}, Lcom/onyx/galaxy/note/account/data/PolicyType;->$values()[Lcom/onyx/galaxy/note/account/data/PolicyType;

    move-result-object v0

    sput-object v0, Lcom/onyx/galaxy/note/account/data/PolicyType;->$VALUES:[Lcom/onyx/galaxy/note/account/data/PolicyType;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/onyx/galaxy/note/account/data/PolicyType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/onyx/galaxy/note/account/data/PolicyType;->titleRes:I

    iput p4, p0, Lcom/onyx/galaxy/note/account/data/PolicyType;->urlRes:I

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/onyx/galaxy/note/account/data/PolicyType;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/galaxy/note/account/data/PolicyType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/onyx/galaxy/note/account/data/PolicyType;
    .locals 1

    const-class v0, Lcom/onyx/galaxy/note/account/data/PolicyType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/account/data/PolicyType;

    return-object p0
.end method

.method public static values()[Lcom/onyx/galaxy/note/account/data/PolicyType;
    .locals 1

    sget-object v0, Lcom/onyx/galaxy/note/account/data/PolicyType;->$VALUES:[Lcom/onyx/galaxy/note/account/data/PolicyType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/onyx/galaxy/note/account/data/PolicyType;

    return-object v0
.end method


# virtual methods
.method public final getTitleRes()I
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/account/data/PolicyType;->titleRes:I

    return p0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    iget p0, p0, Lcom/onyx/galaxy/note/account/data/PolicyType;->urlRes:I

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringSafely(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getUrlRes()I
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/account/data/PolicyType;->urlRes:I

    return p0
.end method
