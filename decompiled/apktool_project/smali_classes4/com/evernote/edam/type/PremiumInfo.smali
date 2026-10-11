.class public Lcom/evernote/edam/type/PremiumInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/evernote/thrift/TBase;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/evernote/thrift/TBase<",
        "Lcom/evernote/edam/type/PremiumInfo;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final CAN_PURCHASE_UPLOAD_ALLOWANCE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final CURRENT_TIME_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final PREMIUM_CANCELLATION_PENDING_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final PREMIUM_EXPIRATION_DATE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final PREMIUM_EXTENDABLE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final PREMIUM_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final PREMIUM_PENDING_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final PREMIUM_RECURRING_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final PREMIUM_UPGRADABLE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final SPONSORED_GROUP_NAME_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final SPONSORED_GROUP_ROLE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

.field private static final STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

.field private static final __CANPURCHASEUPLOADALLOWANCE_ISSET_ID:I = 0x7

.field private static final __CURRENTTIME_ISSET_ID:I = 0x0

.field private static final __PREMIUMCANCELLATIONPENDING_ISSET_ID:I = 0x6

.field private static final __PREMIUMEXPIRATIONDATE_ISSET_ID:I = 0x3

.field private static final __PREMIUMEXTENDABLE_ISSET_ID:I = 0x4

.field private static final __PREMIUMPENDING_ISSET_ID:I = 0x5

.field private static final __PREMIUMRECURRING_ISSET_ID:I = 0x2

.field private static final __PREMIUMUPGRADABLE_ISSET_ID:I = 0x8

.field private static final __PREMIUM_ISSET_ID:I = 0x1


# instance fields
.field private __isset_vector:[Z

.field private canPurchaseUploadAllowance:Z

.field private currentTime:J

.field private premium:Z

.field private premiumCancellationPending:Z

.field private premiumExpirationDate:J

.field private premiumExtendable:Z

.field private premiumPending:Z

.field private premiumRecurring:Z

.field private premiumUpgradable:Z

.field private sponsoredGroupName:Ljava/lang/String;

.field private sponsoredGroupRole:Lcom/evernote/edam/type/SponsoredGroupRole;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/evernote/thrift/protocol/TStruct;

    const-string v1, "PremiumInfo"

    invoke-direct {v0, v1}, Lcom/evernote/thrift/protocol/TStruct;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/edam/type/PremiumInfo;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const/4 v1, 0x1

    const-string v2, "currentTime"

    const/16 v3, 0xa

    invoke-direct {v0, v2, v3, v1}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/PremiumInfo;->CURRENT_TIME_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "premium"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/PremiumInfo;->PREMIUM_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "premiumRecurring"

    const/4 v4, 0x3

    invoke-direct {v0, v1, v2, v4}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/PremiumInfo;->PREMIUM_RECURRING_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "premiumExpirationDate"

    const/4 v4, 0x4

    invoke-direct {v0, v1, v3, v4}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/PremiumInfo;->PREMIUM_EXPIRATION_DATE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "premiumExtendable"

    const/4 v4, 0x5

    invoke-direct {v0, v1, v2, v4}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/PremiumInfo;->PREMIUM_EXTENDABLE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "premiumPending"

    const/4 v4, 0x6

    invoke-direct {v0, v1, v2, v4}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/PremiumInfo;->PREMIUM_PENDING_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "premiumCancellationPending"

    const/4 v4, 0x7

    invoke-direct {v0, v1, v2, v4}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/PremiumInfo;->PREMIUM_CANCELLATION_PENDING_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "canPurchaseUploadAllowance"

    const/16 v4, 0x8

    invoke-direct {v0, v1, v2, v4}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/PremiumInfo;->CAN_PURCHASE_UPLOAD_ALLOWANCE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const/16 v1, 0x9

    const-string v5, "sponsoredGroupName"

    const/16 v6, 0xb

    invoke-direct {v0, v5, v6, v1}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/PremiumInfo;->SPONSORED_GROUP_NAME_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "sponsoredGroupRole"

    invoke-direct {v0, v1, v4, v3}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/PremiumInfo;->SPONSORED_GROUP_ROLE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    new-instance v0, Lcom/evernote/thrift/protocol/TField;

    const-string v1, "premiumUpgradable"

    invoke-direct {v0, v1, v2, v6}, Lcom/evernote/thrift/protocol/TField;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/evernote/edam/type/PremiumInfo;->PREMIUM_UPGRADABLE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x9

    new-array v0, v0, [Z

    .line 2
    iput-object v0, p0, Lcom/evernote/edam/type/PremiumInfo;->__isset_vector:[Z

    return-void
.end method

.method public constructor <init>(JZZZZZZ)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/evernote/edam/type/PremiumInfo;-><init>()V

    .line 4
    iput-wide p1, p0, Lcom/evernote/edam/type/PremiumInfo;->currentTime:J

    const/4 p1, 0x1

    .line 5
    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/PremiumInfo;->setCurrentTimeIsSet(Z)V

    .line 6
    iput-boolean p3, p0, Lcom/evernote/edam/type/PremiumInfo;->premium:Z

    .line 7
    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/PremiumInfo;->setPremiumIsSet(Z)V

    .line 8
    iput-boolean p4, p0, Lcom/evernote/edam/type/PremiumInfo;->premiumRecurring:Z

    .line 9
    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/PremiumInfo;->setPremiumRecurringIsSet(Z)V

    .line 10
    iput-boolean p5, p0, Lcom/evernote/edam/type/PremiumInfo;->premiumExtendable:Z

    .line 11
    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/PremiumInfo;->setPremiumExtendableIsSet(Z)V

    .line 12
    iput-boolean p6, p0, Lcom/evernote/edam/type/PremiumInfo;->premiumPending:Z

    .line 13
    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/PremiumInfo;->setPremiumPendingIsSet(Z)V

    .line 14
    iput-boolean p7, p0, Lcom/evernote/edam/type/PremiumInfo;->premiumCancellationPending:Z

    .line 15
    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/PremiumInfo;->setPremiumCancellationPendingIsSet(Z)V

    .line 16
    iput-boolean p8, p0, Lcom/evernote/edam/type/PremiumInfo;->canPurchaseUploadAllowance:Z

    .line 17
    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/PremiumInfo;->setCanPurchaseUploadAllowanceIsSet(Z)V

    return-void
.end method

.method public constructor <init>(Lcom/evernote/edam/type/PremiumInfo;)V
    .locals 4

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x9

    new-array v0, v0, [Z

    .line 19
    iput-object v0, p0, Lcom/evernote/edam/type/PremiumInfo;->__isset_vector:[Z

    .line 20
    iget-object v1, p1, Lcom/evernote/edam/type/PremiumInfo;->__isset_vector:[Z

    const/4 v2, 0x0

    array-length v3, v1

    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 21
    iget-wide v0, p1, Lcom/evernote/edam/type/PremiumInfo;->currentTime:J

    iput-wide v0, p0, Lcom/evernote/edam/type/PremiumInfo;->currentTime:J

    .line 22
    iget-boolean v0, p1, Lcom/evernote/edam/type/PremiumInfo;->premium:Z

    iput-boolean v0, p0, Lcom/evernote/edam/type/PremiumInfo;->premium:Z

    .line 23
    iget-boolean v0, p1, Lcom/evernote/edam/type/PremiumInfo;->premiumRecurring:Z

    iput-boolean v0, p0, Lcom/evernote/edam/type/PremiumInfo;->premiumRecurring:Z

    .line 24
    iget-wide v0, p1, Lcom/evernote/edam/type/PremiumInfo;->premiumExpirationDate:J

    iput-wide v0, p0, Lcom/evernote/edam/type/PremiumInfo;->premiumExpirationDate:J

    .line 25
    iget-boolean v0, p1, Lcom/evernote/edam/type/PremiumInfo;->premiumExtendable:Z

    iput-boolean v0, p0, Lcom/evernote/edam/type/PremiumInfo;->premiumExtendable:Z

    .line 26
    iget-boolean v0, p1, Lcom/evernote/edam/type/PremiumInfo;->premiumPending:Z

    iput-boolean v0, p0, Lcom/evernote/edam/type/PremiumInfo;->premiumPending:Z

    .line 27
    iget-boolean v0, p1, Lcom/evernote/edam/type/PremiumInfo;->premiumCancellationPending:Z

    iput-boolean v0, p0, Lcom/evernote/edam/type/PremiumInfo;->premiumCancellationPending:Z

    .line 28
    iget-boolean v0, p1, Lcom/evernote/edam/type/PremiumInfo;->canPurchaseUploadAllowance:Z

    iput-boolean v0, p0, Lcom/evernote/edam/type/PremiumInfo;->canPurchaseUploadAllowance:Z

    .line 29
    invoke-virtual {p1}, Lcom/evernote/edam/type/PremiumInfo;->isSetSponsoredGroupName()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p1, Lcom/evernote/edam/type/PremiumInfo;->sponsoredGroupName:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/edam/type/PremiumInfo;->sponsoredGroupName:Ljava/lang/String;

    .line 31
    :cond_0
    invoke-virtual {p1}, Lcom/evernote/edam/type/PremiumInfo;->isSetSponsoredGroupRole()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 32
    iget-object v0, p1, Lcom/evernote/edam/type/PremiumInfo;->sponsoredGroupRole:Lcom/evernote/edam/type/SponsoredGroupRole;

    iput-object v0, p0, Lcom/evernote/edam/type/PremiumInfo;->sponsoredGroupRole:Lcom/evernote/edam/type/SponsoredGroupRole;

    .line 33
    :cond_1
    iget-boolean p1, p1, Lcom/evernote/edam/type/PremiumInfo;->premiumUpgradable:Z

    iput-boolean p1, p0, Lcom/evernote/edam/type/PremiumInfo;->premiumUpgradable:Z

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/PremiumInfo;->setCurrentTimeIsSet(Z)V

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/evernote/edam/type/PremiumInfo;->currentTime:J

    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/PremiumInfo;->setPremiumIsSet(Z)V

    iput-boolean v0, p0, Lcom/evernote/edam/type/PremiumInfo;->premium:Z

    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/PremiumInfo;->setPremiumRecurringIsSet(Z)V

    iput-boolean v0, p0, Lcom/evernote/edam/type/PremiumInfo;->premiumRecurring:Z

    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/PremiumInfo;->setPremiumExpirationDateIsSet(Z)V

    iput-wide v1, p0, Lcom/evernote/edam/type/PremiumInfo;->premiumExpirationDate:J

    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/PremiumInfo;->setPremiumExtendableIsSet(Z)V

    iput-boolean v0, p0, Lcom/evernote/edam/type/PremiumInfo;->premiumExtendable:Z

    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/PremiumInfo;->setPremiumPendingIsSet(Z)V

    iput-boolean v0, p0, Lcom/evernote/edam/type/PremiumInfo;->premiumPending:Z

    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/PremiumInfo;->setPremiumCancellationPendingIsSet(Z)V

    iput-boolean v0, p0, Lcom/evernote/edam/type/PremiumInfo;->premiumCancellationPending:Z

    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/PremiumInfo;->setCanPurchaseUploadAllowanceIsSet(Z)V

    iput-boolean v0, p0, Lcom/evernote/edam/type/PremiumInfo;->canPurchaseUploadAllowance:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/evernote/edam/type/PremiumInfo;->sponsoredGroupName:Ljava/lang/String;

    iput-object v1, p0, Lcom/evernote/edam/type/PremiumInfo;->sponsoredGroupRole:Lcom/evernote/edam/type/SponsoredGroupRole;

    invoke-virtual {p0, v0}, Lcom/evernote/edam/type/PremiumInfo;->setPremiumUpgradableIsSet(Z)V

    iput-boolean v0, p0, Lcom/evernote/edam/type/PremiumInfo;->premiumUpgradable:Z

    return-void
.end method

.method public compareTo(Lcom/evernote/edam/type/PremiumInfo;)I
    .locals 4

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/evernote/edam/type/PremiumInfo;->isSetCurrentTime()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/PremiumInfo;->isSetCurrentTime()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_1

    return v0

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/evernote/edam/type/PremiumInfo;->isSetCurrentTime()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-wide v0, p0, Lcom/evernote/edam/type/PremiumInfo;->currentTime:J

    iget-wide v2, p1, Lcom/evernote/edam/type/PremiumInfo;->currentTime:J

    invoke-static {v0, v1, v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(JJ)I

    move-result v0

    if-eqz v0, :cond_2

    return v0

    .line 6
    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/type/PremiumInfo;->isSetPremium()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/PremiumInfo;->isSetPremium()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_3

    return v0

    .line 7
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/type/PremiumInfo;->isSetPremium()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/evernote/edam/type/PremiumInfo;->premium:Z

    iget-boolean v1, p1, Lcom/evernote/edam/type/PremiumInfo;->premium:Z

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(ZZ)I

    move-result v0

    if-eqz v0, :cond_4

    return v0

    .line 8
    :cond_4
    invoke-virtual {p0}, Lcom/evernote/edam/type/PremiumInfo;->isSetPremiumRecurring()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/PremiumInfo;->isSetPremiumRecurring()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_5

    return v0

    .line 9
    :cond_5
    invoke-virtual {p0}, Lcom/evernote/edam/type/PremiumInfo;->isSetPremiumRecurring()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/evernote/edam/type/PremiumInfo;->premiumRecurring:Z

    iget-boolean v1, p1, Lcom/evernote/edam/type/PremiumInfo;->premiumRecurring:Z

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(ZZ)I

    move-result v0

    if-eqz v0, :cond_6

    return v0

    .line 10
    :cond_6
    invoke-virtual {p0}, Lcom/evernote/edam/type/PremiumInfo;->isSetPremiumExpirationDate()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/PremiumInfo;->isSetPremiumExpirationDate()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_7

    return v0

    .line 11
    :cond_7
    invoke-virtual {p0}, Lcom/evernote/edam/type/PremiumInfo;->isSetPremiumExpirationDate()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-wide v0, p0, Lcom/evernote/edam/type/PremiumInfo;->premiumExpirationDate:J

    iget-wide v2, p1, Lcom/evernote/edam/type/PremiumInfo;->premiumExpirationDate:J

    invoke-static {v0, v1, v2, v3}, Lcom/evernote/thrift/TBaseHelper;->compareTo(JJ)I

    move-result v0

    if-eqz v0, :cond_8

    return v0

    .line 12
    :cond_8
    invoke-virtual {p0}, Lcom/evernote/edam/type/PremiumInfo;->isSetPremiumExtendable()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/PremiumInfo;->isSetPremiumExtendable()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_9

    return v0

    .line 13
    :cond_9
    invoke-virtual {p0}, Lcom/evernote/edam/type/PremiumInfo;->isSetPremiumExtendable()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/evernote/edam/type/PremiumInfo;->premiumExtendable:Z

    iget-boolean v1, p1, Lcom/evernote/edam/type/PremiumInfo;->premiumExtendable:Z

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(ZZ)I

    move-result v0

    if-eqz v0, :cond_a

    return v0

    .line 14
    :cond_a
    invoke-virtual {p0}, Lcom/evernote/edam/type/PremiumInfo;->isSetPremiumPending()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/PremiumInfo;->isSetPremiumPending()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_b

    return v0

    .line 15
    :cond_b
    invoke-virtual {p0}, Lcom/evernote/edam/type/PremiumInfo;->isSetPremiumPending()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/evernote/edam/type/PremiumInfo;->premiumPending:Z

    iget-boolean v1, p1, Lcom/evernote/edam/type/PremiumInfo;->premiumPending:Z

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(ZZ)I

    move-result v0

    if-eqz v0, :cond_c

    return v0

    .line 16
    :cond_c
    invoke-virtual {p0}, Lcom/evernote/edam/type/PremiumInfo;->isSetPremiumCancellationPending()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/PremiumInfo;->isSetPremiumCancellationPending()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_d

    return v0

    .line 17
    :cond_d
    invoke-virtual {p0}, Lcom/evernote/edam/type/PremiumInfo;->isSetPremiumCancellationPending()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/evernote/edam/type/PremiumInfo;->premiumCancellationPending:Z

    iget-boolean v1, p1, Lcom/evernote/edam/type/PremiumInfo;->premiumCancellationPending:Z

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(ZZ)I

    move-result v0

    if-eqz v0, :cond_e

    return v0

    .line 18
    :cond_e
    invoke-virtual {p0}, Lcom/evernote/edam/type/PremiumInfo;->isSetCanPurchaseUploadAllowance()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/PremiumInfo;->isSetCanPurchaseUploadAllowance()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_f

    return v0

    .line 19
    :cond_f
    invoke-virtual {p0}, Lcom/evernote/edam/type/PremiumInfo;->isSetCanPurchaseUploadAllowance()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/evernote/edam/type/PremiumInfo;->canPurchaseUploadAllowance:Z

    iget-boolean v1, p1, Lcom/evernote/edam/type/PremiumInfo;->canPurchaseUploadAllowance:Z

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(ZZ)I

    move-result v0

    if-eqz v0, :cond_10

    return v0

    .line 20
    :cond_10
    invoke-virtual {p0}, Lcom/evernote/edam/type/PremiumInfo;->isSetSponsoredGroupName()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/PremiumInfo;->isSetSponsoredGroupName()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_11

    return v0

    .line 21
    :cond_11
    invoke-virtual {p0}, Lcom/evernote/edam/type/PremiumInfo;->isSetSponsoredGroupName()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/evernote/edam/type/PremiumInfo;->sponsoredGroupName:Ljava/lang/String;

    iget-object v1, p1, Lcom/evernote/edam/type/PremiumInfo;->sponsoredGroupName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_12

    return v0

    .line 22
    :cond_12
    invoke-virtual {p0}, Lcom/evernote/edam/type/PremiumInfo;->isSetSponsoredGroupRole()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/PremiumInfo;->isSetSponsoredGroupRole()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_13

    return v0

    .line 23
    :cond_13
    invoke-virtual {p0}, Lcom/evernote/edam/type/PremiumInfo;->isSetSponsoredGroupRole()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/evernote/edam/type/PremiumInfo;->sponsoredGroupRole:Lcom/evernote/edam/type/SponsoredGroupRole;

    iget-object v1, p1, Lcom/evernote/edam/type/PremiumInfo;->sponsoredGroupRole:Lcom/evernote/edam/type/SponsoredGroupRole;

    invoke-static {v0, v1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    if-eqz v0, :cond_14

    return v0

    .line 24
    :cond_14
    invoke-virtual {p0}, Lcom/evernote/edam/type/PremiumInfo;->isSetPremiumUpgradable()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/PremiumInfo;->isSetPremiumUpgradable()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_15

    return v0

    .line 25
    :cond_15
    invoke-virtual {p0}, Lcom/evernote/edam/type/PremiumInfo;->isSetPremiumUpgradable()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-boolean p0, p0, Lcom/evernote/edam/type/PremiumInfo;->premiumUpgradable:Z

    iget-boolean p1, p1, Lcom/evernote/edam/type/PremiumInfo;->premiumUpgradable:Z

    invoke-static {p0, p1}, Lcom/evernote/thrift/TBaseHelper;->compareTo(ZZ)I

    move-result p0

    if-eqz p0, :cond_16

    return p0

    :cond_16
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/evernote/edam/type/PremiumInfo;

    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/PremiumInfo;->compareTo(Lcom/evernote/edam/type/PremiumInfo;)I

    move-result p0

    return p0
.end method

.method public deepCopy()Lcom/evernote/edam/type/PremiumInfo;
    .locals 1

    .line 2
    new-instance v0, Lcom/evernote/edam/type/PremiumInfo;

    invoke-direct {v0, p0}, Lcom/evernote/edam/type/PremiumInfo;-><init>(Lcom/evernote/edam/type/PremiumInfo;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lcom/evernote/thrift/TBase;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/evernote/edam/type/PremiumInfo;->deepCopy()Lcom/evernote/edam/type/PremiumInfo;

    move-result-object p0

    return-object p0
.end method

.method public equals(Lcom/evernote/edam/type/PremiumInfo;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 3
    :cond_0
    iget-wide v1, p0, Lcom/evernote/edam/type/PremiumInfo;->currentTime:J

    iget-wide v3, p1, Lcom/evernote/edam/type/PremiumInfo;->currentTime:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    return v0

    .line 4
    :cond_1
    iget-boolean v1, p0, Lcom/evernote/edam/type/PremiumInfo;->premium:Z

    iget-boolean v2, p1, Lcom/evernote/edam/type/PremiumInfo;->premium:Z

    if-eq v1, v2, :cond_2

    return v0

    .line 5
    :cond_2
    iget-boolean v1, p0, Lcom/evernote/edam/type/PremiumInfo;->premiumRecurring:Z

    iget-boolean v2, p1, Lcom/evernote/edam/type/PremiumInfo;->premiumRecurring:Z

    if-eq v1, v2, :cond_3

    return v0

    .line 6
    :cond_3
    invoke-virtual {p0}, Lcom/evernote/edam/type/PremiumInfo;->isSetPremiumExpirationDate()Z

    move-result v1

    .line 7
    invoke-virtual {p1}, Lcom/evernote/edam/type/PremiumInfo;->isSetPremiumExpirationDate()Z

    move-result v2

    if-nez v1, :cond_4

    if-eqz v2, :cond_6

    :cond_4
    if-eqz v1, :cond_14

    if-nez v2, :cond_5

    goto/16 :goto_0

    .line 8
    :cond_5
    iget-wide v1, p0, Lcom/evernote/edam/type/PremiumInfo;->premiumExpirationDate:J

    iget-wide v3, p1, Lcom/evernote/edam/type/PremiumInfo;->premiumExpirationDate:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_6

    return v0

    .line 9
    :cond_6
    iget-boolean v1, p0, Lcom/evernote/edam/type/PremiumInfo;->premiumExtendable:Z

    iget-boolean v2, p1, Lcom/evernote/edam/type/PremiumInfo;->premiumExtendable:Z

    if-eq v1, v2, :cond_7

    return v0

    .line 10
    :cond_7
    iget-boolean v1, p0, Lcom/evernote/edam/type/PremiumInfo;->premiumPending:Z

    iget-boolean v2, p1, Lcom/evernote/edam/type/PremiumInfo;->premiumPending:Z

    if-eq v1, v2, :cond_8

    return v0

    .line 11
    :cond_8
    iget-boolean v1, p0, Lcom/evernote/edam/type/PremiumInfo;->premiumCancellationPending:Z

    iget-boolean v2, p1, Lcom/evernote/edam/type/PremiumInfo;->premiumCancellationPending:Z

    if-eq v1, v2, :cond_9

    return v0

    .line 12
    :cond_9
    iget-boolean v1, p0, Lcom/evernote/edam/type/PremiumInfo;->canPurchaseUploadAllowance:Z

    iget-boolean v2, p1, Lcom/evernote/edam/type/PremiumInfo;->canPurchaseUploadAllowance:Z

    if-eq v1, v2, :cond_a

    return v0

    .line 13
    :cond_a
    invoke-virtual {p0}, Lcom/evernote/edam/type/PremiumInfo;->isSetSponsoredGroupName()Z

    move-result v1

    .line 14
    invoke-virtual {p1}, Lcom/evernote/edam/type/PremiumInfo;->isSetSponsoredGroupName()Z

    move-result v2

    if-nez v1, :cond_b

    if-eqz v2, :cond_d

    :cond_b
    if-eqz v1, :cond_14

    if-nez v2, :cond_c

    goto :goto_0

    .line 15
    :cond_c
    iget-object v1, p0, Lcom/evernote/edam/type/PremiumInfo;->sponsoredGroupName:Ljava/lang/String;

    iget-object v2, p1, Lcom/evernote/edam/type/PremiumInfo;->sponsoredGroupName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v0

    .line 16
    :cond_d
    invoke-virtual {p0}, Lcom/evernote/edam/type/PremiumInfo;->isSetSponsoredGroupRole()Z

    move-result v1

    .line 17
    invoke-virtual {p1}, Lcom/evernote/edam/type/PremiumInfo;->isSetSponsoredGroupRole()Z

    move-result v2

    if-nez v1, :cond_e

    if-eqz v2, :cond_10

    :cond_e
    if-eqz v1, :cond_14

    if-nez v2, :cond_f

    goto :goto_0

    .line 18
    :cond_f
    iget-object v1, p0, Lcom/evernote/edam/type/PremiumInfo;->sponsoredGroupRole:Lcom/evernote/edam/type/SponsoredGroupRole;

    iget-object v2, p1, Lcom/evernote/edam/type/PremiumInfo;->sponsoredGroupRole:Lcom/evernote/edam/type/SponsoredGroupRole;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v0

    .line 19
    :cond_10
    invoke-virtual {p0}, Lcom/evernote/edam/type/PremiumInfo;->isSetPremiumUpgradable()Z

    move-result v1

    .line 20
    invoke-virtual {p1}, Lcom/evernote/edam/type/PremiumInfo;->isSetPremiumUpgradable()Z

    move-result v2

    if-nez v1, :cond_11

    if-eqz v2, :cond_13

    :cond_11
    if-eqz v1, :cond_14

    if-nez v2, :cond_12

    goto :goto_0

    .line 21
    :cond_12
    iget-boolean p0, p0, Lcom/evernote/edam/type/PremiumInfo;->premiumUpgradable:Z

    iget-boolean p1, p1, Lcom/evernote/edam/type/PremiumInfo;->premiumUpgradable:Z

    if-eq p0, p1, :cond_13

    return v0

    :cond_13
    const/4 p0, 0x1

    return p0

    :cond_14
    :goto_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/evernote/edam/type/PremiumInfo;

    if-eqz v1, :cond_1

    .line 2
    check-cast p1, Lcom/evernote/edam/type/PremiumInfo;

    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/PremiumInfo;->equals(Lcom/evernote/edam/type/PremiumInfo;)Z

    move-result p0

    return p0

    :cond_1
    return v0
.end method

.method public getCurrentTime()J
    .locals 2

    iget-wide v0, p0, Lcom/evernote/edam/type/PremiumInfo;->currentTime:J

    return-wide v0
.end method

.method public getPremiumExpirationDate()J
    .locals 2

    iget-wide v0, p0, Lcom/evernote/edam/type/PremiumInfo;->premiumExpirationDate:J

    return-wide v0
.end method

.method public getSponsoredGroupName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/type/PremiumInfo;->sponsoredGroupName:Ljava/lang/String;

    return-object p0
.end method

.method public getSponsoredGroupRole()Lcom/evernote/edam/type/SponsoredGroupRole;
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/type/PremiumInfo;->sponsoredGroupRole:Lcom/evernote/edam/type/SponsoredGroupRole;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isCanPurchaseUploadAllowance()Z
    .locals 0

    iget-boolean p0, p0, Lcom/evernote/edam/type/PremiumInfo;->canPurchaseUploadAllowance:Z

    return p0
.end method

.method public isPremium()Z
    .locals 0

    iget-boolean p0, p0, Lcom/evernote/edam/type/PremiumInfo;->premium:Z

    return p0
.end method

.method public isPremiumCancellationPending()Z
    .locals 0

    iget-boolean p0, p0, Lcom/evernote/edam/type/PremiumInfo;->premiumCancellationPending:Z

    return p0
.end method

.method public isPremiumExtendable()Z
    .locals 0

    iget-boolean p0, p0, Lcom/evernote/edam/type/PremiumInfo;->premiumExtendable:Z

    return p0
.end method

.method public isPremiumPending()Z
    .locals 0

    iget-boolean p0, p0, Lcom/evernote/edam/type/PremiumInfo;->premiumPending:Z

    return p0
.end method

.method public isPremiumRecurring()Z
    .locals 0

    iget-boolean p0, p0, Lcom/evernote/edam/type/PremiumInfo;->premiumRecurring:Z

    return p0
.end method

.method public isPremiumUpgradable()Z
    .locals 0

    iget-boolean p0, p0, Lcom/evernote/edam/type/PremiumInfo;->premiumUpgradable:Z

    return p0
.end method

.method public isSetCanPurchaseUploadAllowance()Z
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/PremiumInfo;->__isset_vector:[Z

    const/4 v0, 0x7

    aget-boolean p0, p0, v0

    return p0
.end method

.method public isSetCurrentTime()Z
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/PremiumInfo;->__isset_vector:[Z

    const/4 v0, 0x0

    aget-boolean p0, p0, v0

    return p0
.end method

.method public isSetPremium()Z
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/PremiumInfo;->__isset_vector:[Z

    const/4 v0, 0x1

    aget-boolean p0, p0, v0

    return p0
.end method

.method public isSetPremiumCancellationPending()Z
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/PremiumInfo;->__isset_vector:[Z

    const/4 v0, 0x6

    aget-boolean p0, p0, v0

    return p0
.end method

.method public isSetPremiumExpirationDate()Z
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/PremiumInfo;->__isset_vector:[Z

    const/4 v0, 0x3

    aget-boolean p0, p0, v0

    return p0
.end method

.method public isSetPremiumExtendable()Z
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/PremiumInfo;->__isset_vector:[Z

    const/4 v0, 0x4

    aget-boolean p0, p0, v0

    return p0
.end method

.method public isSetPremiumPending()Z
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/PremiumInfo;->__isset_vector:[Z

    const/4 v0, 0x5

    aget-boolean p0, p0, v0

    return p0
.end method

.method public isSetPremiumRecurring()Z
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/PremiumInfo;->__isset_vector:[Z

    const/4 v0, 0x2

    aget-boolean p0, p0, v0

    return p0
.end method

.method public isSetPremiumUpgradable()Z
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/PremiumInfo;->__isset_vector:[Z

    const/16 v0, 0x8

    aget-boolean p0, p0, v0

    return p0
.end method

.method public isSetSponsoredGroupName()Z
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/type/PremiumInfo;->sponsoredGroupName:Ljava/lang/String;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSetSponsoredGroupRole()Z
    .locals 0

    iget-object p0, p0, Lcom/evernote/edam/type/PremiumInfo;->sponsoredGroupRole:Lcom/evernote/edam/type/SponsoredGroupRole;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public read(Lcom/evernote/thrift/protocol/TProtocol;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructBegin()Lcom/evernote/thrift/protocol/TStruct;

    :goto_0
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldBegin()Lcom/evernote/thrift/protocol/TField;

    move-result-object v0

    iget-byte v1, v0, Lcom/evernote/thrift/protocol/TField;->type:B

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readStructEnd()V

    invoke-virtual {p0}, Lcom/evernote/edam/type/PremiumInfo;->validate()V

    return-void

    :cond_0
    iget-short v0, v0, Lcom/evernote/thrift/protocol/TField;->id:S

    const/16 v2, 0xa

    const/4 v3, 0x2

    const/4 v4, 0x1

    packed-switch v0, :pswitch_data_0

    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    :pswitch_0
    if-ne v1, v3, :cond_1

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/evernote/edam/type/PremiumInfo;->premiumUpgradable:Z

    invoke-virtual {p0, v4}, Lcom/evernote/edam/type/PremiumInfo;->setPremiumUpgradableIsSet(Z)V

    goto/16 :goto_1

    :cond_1
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    :pswitch_1
    const/16 v0, 0x8

    if-ne v1, v0, :cond_2

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI32()I

    move-result v0

    invoke-static {v0}, Lcom/evernote/edam/type/SponsoredGroupRole;->findByValue(I)Lcom/evernote/edam/type/SponsoredGroupRole;

    move-result-object v0

    iput-object v0, p0, Lcom/evernote/edam/type/PremiumInfo;->sponsoredGroupRole:Lcom/evernote/edam/type/SponsoredGroupRole;

    goto/16 :goto_1

    :cond_2
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    :pswitch_2
    const/16 v0, 0xb

    if-ne v1, v0, :cond_3

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/evernote/edam/type/PremiumInfo;->sponsoredGroupName:Ljava/lang/String;

    goto/16 :goto_1

    :cond_3
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    :pswitch_3
    if-ne v1, v3, :cond_4

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/evernote/edam/type/PremiumInfo;->canPurchaseUploadAllowance:Z

    invoke-virtual {p0, v4}, Lcom/evernote/edam/type/PremiumInfo;->setCanPurchaseUploadAllowanceIsSet(Z)V

    goto/16 :goto_1

    :cond_4
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto/16 :goto_1

    :pswitch_4
    if-ne v1, v3, :cond_5

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/evernote/edam/type/PremiumInfo;->premiumCancellationPending:Z

    invoke-virtual {p0, v4}, Lcom/evernote/edam/type/PremiumInfo;->setPremiumCancellationPendingIsSet(Z)V

    goto/16 :goto_1

    :cond_5
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    :pswitch_5
    if-ne v1, v3, :cond_6

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/evernote/edam/type/PremiumInfo;->premiumPending:Z

    invoke-virtual {p0, v4}, Lcom/evernote/edam/type/PremiumInfo;->setPremiumPendingIsSet(Z)V

    goto :goto_1

    :cond_6
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    :pswitch_6
    if-ne v1, v3, :cond_7

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/evernote/edam/type/PremiumInfo;->premiumExtendable:Z

    invoke-virtual {p0, v4}, Lcom/evernote/edam/type/PremiumInfo;->setPremiumExtendableIsSet(Z)V

    goto :goto_1

    :cond_7
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    :pswitch_7
    if-ne v1, v2, :cond_8

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/evernote/edam/type/PremiumInfo;->premiumExpirationDate:J

    invoke-virtual {p0, v4}, Lcom/evernote/edam/type/PremiumInfo;->setPremiumExpirationDateIsSet(Z)V

    goto :goto_1

    :cond_8
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    :pswitch_8
    if-ne v1, v3, :cond_9

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/evernote/edam/type/PremiumInfo;->premiumRecurring:Z

    invoke-virtual {p0, v4}, Lcom/evernote/edam/type/PremiumInfo;->setPremiumRecurringIsSet(Z)V

    goto :goto_1

    :cond_9
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    :pswitch_9
    if-ne v1, v3, :cond_a

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/evernote/edam/type/PremiumInfo;->premium:Z

    invoke-virtual {p0, v4}, Lcom/evernote/edam/type/PremiumInfo;->setPremiumIsSet(Z)V

    goto :goto_1

    :cond_a
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    goto :goto_1

    :pswitch_a
    if-ne v1, v2, :cond_b

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readI64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/evernote/edam/type/PremiumInfo;->currentTime:J

    invoke-virtual {p0, v4}, Lcom/evernote/edam/type/PremiumInfo;->setCurrentTimeIsSet(Z)V

    goto :goto_1

    :cond_b
    invoke-static {p1, v1}, Lcom/evernote/thrift/protocol/TProtocolUtil;->skip(Lcom/evernote/thrift/protocol/TProtocol;B)V

    :goto_1
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->readFieldEnd()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setCanPurchaseUploadAllowance(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/evernote/edam/type/PremiumInfo;->canPurchaseUploadAllowance:Z

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/PremiumInfo;->setCanPurchaseUploadAllowanceIsSet(Z)V

    return-void
.end method

.method public setCanPurchaseUploadAllowanceIsSet(Z)V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/PremiumInfo;->__isset_vector:[Z

    const/4 v0, 0x7

    aput-boolean p1, p0, v0

    return-void
.end method

.method public setCurrentTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/evernote/edam/type/PremiumInfo;->currentTime:J

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/PremiumInfo;->setCurrentTimeIsSet(Z)V

    return-void
.end method

.method public setCurrentTimeIsSet(Z)V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/PremiumInfo;->__isset_vector:[Z

    const/4 v0, 0x0

    aput-boolean p1, p0, v0

    return-void
.end method

.method public setPremium(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/evernote/edam/type/PremiumInfo;->premium:Z

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/PremiumInfo;->setPremiumIsSet(Z)V

    return-void
.end method

.method public setPremiumCancellationPending(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/evernote/edam/type/PremiumInfo;->premiumCancellationPending:Z

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/PremiumInfo;->setPremiumCancellationPendingIsSet(Z)V

    return-void
.end method

.method public setPremiumCancellationPendingIsSet(Z)V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/PremiumInfo;->__isset_vector:[Z

    const/4 v0, 0x6

    aput-boolean p1, p0, v0

    return-void
.end method

.method public setPremiumExpirationDate(J)V
    .locals 0

    iput-wide p1, p0, Lcom/evernote/edam/type/PremiumInfo;->premiumExpirationDate:J

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/PremiumInfo;->setPremiumExpirationDateIsSet(Z)V

    return-void
.end method

.method public setPremiumExpirationDateIsSet(Z)V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/PremiumInfo;->__isset_vector:[Z

    const/4 v0, 0x3

    aput-boolean p1, p0, v0

    return-void
.end method

.method public setPremiumExtendable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/evernote/edam/type/PremiumInfo;->premiumExtendable:Z

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/PremiumInfo;->setPremiumExtendableIsSet(Z)V

    return-void
.end method

.method public setPremiumExtendableIsSet(Z)V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/PremiumInfo;->__isset_vector:[Z

    const/4 v0, 0x4

    aput-boolean p1, p0, v0

    return-void
.end method

.method public setPremiumIsSet(Z)V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/PremiumInfo;->__isset_vector:[Z

    const/4 v0, 0x1

    aput-boolean p1, p0, v0

    return-void
.end method

.method public setPremiumPending(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/evernote/edam/type/PremiumInfo;->premiumPending:Z

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/PremiumInfo;->setPremiumPendingIsSet(Z)V

    return-void
.end method

.method public setPremiumPendingIsSet(Z)V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/PremiumInfo;->__isset_vector:[Z

    const/4 v0, 0x5

    aput-boolean p1, p0, v0

    return-void
.end method

.method public setPremiumRecurring(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/evernote/edam/type/PremiumInfo;->premiumRecurring:Z

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/PremiumInfo;->setPremiumRecurringIsSet(Z)V

    return-void
.end method

.method public setPremiumRecurringIsSet(Z)V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/PremiumInfo;->__isset_vector:[Z

    const/4 v0, 0x2

    aput-boolean p1, p0, v0

    return-void
.end method

.method public setPremiumUpgradable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/evernote/edam/type/PremiumInfo;->premiumUpgradable:Z

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/evernote/edam/type/PremiumInfo;->setPremiumUpgradableIsSet(Z)V

    return-void
.end method

.method public setPremiumUpgradableIsSet(Z)V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/PremiumInfo;->__isset_vector:[Z

    const/16 v0, 0x8

    aput-boolean p1, p0, v0

    return-void
.end method

.method public setSponsoredGroupName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/evernote/edam/type/PremiumInfo;->sponsoredGroupName:Ljava/lang/String;

    return-void
.end method

.method public setSponsoredGroupNameIsSet(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/evernote/edam/type/PremiumInfo;->sponsoredGroupName:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setSponsoredGroupRole(Lcom/evernote/edam/type/SponsoredGroupRole;)V
    .locals 0

    iput-object p1, p0, Lcom/evernote/edam/type/PremiumInfo;->sponsoredGroupRole:Lcom/evernote/edam/type/SponsoredGroupRole;

    return-void
.end method

.method public setSponsoredGroupRoleIsSet(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/evernote/edam/type/PremiumInfo;->sponsoredGroupRole:Lcom/evernote/edam/type/SponsoredGroupRole;

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PremiumInfo("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "currentTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/evernote/edam/type/PremiumInfo;->currentTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "premium:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/evernote/edam/type/PremiumInfo;->premium:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "premiumRecurring:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/evernote/edam/type/PremiumInfo;->premiumRecurring:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/evernote/edam/type/PremiumInfo;->isSetPremiumExpirationDate()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "premiumExpirationDate:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/evernote/edam/type/PremiumInfo;->premiumExpirationDate:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "premiumExtendable:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/evernote/edam/type/PremiumInfo;->premiumExtendable:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "premiumPending:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/evernote/edam/type/PremiumInfo;->premiumPending:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "premiumCancellationPending:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/evernote/edam/type/PremiumInfo;->premiumCancellationPending:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "canPurchaseUploadAllowance:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/evernote/edam/type/PremiumInfo;->canPurchaseUploadAllowance:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/evernote/edam/type/PremiumInfo;->isSetSponsoredGroupName()Z

    move-result v2

    const-string v3, "null"

    if-eqz v2, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "sponsoredGroupName:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/evernote/edam/type/PremiumInfo;->sponsoredGroupName:Ljava/lang/String;

    if-nez v2, :cond_1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/evernote/edam/type/PremiumInfo;->isSetSponsoredGroupRole()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "sponsoredGroupRole:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/evernote/edam/type/PremiumInfo;->sponsoredGroupRole:Lcom/evernote/edam/type/SponsoredGroupRole;

    if-nez v2, :cond_3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/evernote/edam/type/PremiumInfo;->isSetPremiumUpgradable()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "premiumUpgradable:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/evernote/edam/type/PremiumInfo;->premiumUpgradable:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    :cond_5
    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public unsetCanPurchaseUploadAllowance()V
    .locals 2

    iget-object p0, p0, Lcom/evernote/edam/type/PremiumInfo;->__isset_vector:[Z

    const/4 v0, 0x7

    const/4 v1, 0x0

    aput-boolean v1, p0, v0

    return-void
.end method

.method public unsetCurrentTime()V
    .locals 1

    iget-object p0, p0, Lcom/evernote/edam/type/PremiumInfo;->__isset_vector:[Z

    const/4 v0, 0x0

    aput-boolean v0, p0, v0

    return-void
.end method

.method public unsetPremium()V
    .locals 2

    iget-object p0, p0, Lcom/evernote/edam/type/PremiumInfo;->__isset_vector:[Z

    const/4 v0, 0x1

    const/4 v1, 0x0

    aput-boolean v1, p0, v0

    return-void
.end method

.method public unsetPremiumCancellationPending()V
    .locals 2

    iget-object p0, p0, Lcom/evernote/edam/type/PremiumInfo;->__isset_vector:[Z

    const/4 v0, 0x6

    const/4 v1, 0x0

    aput-boolean v1, p0, v0

    return-void
.end method

.method public unsetPremiumExpirationDate()V
    .locals 2

    iget-object p0, p0, Lcom/evernote/edam/type/PremiumInfo;->__isset_vector:[Z

    const/4 v0, 0x3

    const/4 v1, 0x0

    aput-boolean v1, p0, v0

    return-void
.end method

.method public unsetPremiumExtendable()V
    .locals 2

    iget-object p0, p0, Lcom/evernote/edam/type/PremiumInfo;->__isset_vector:[Z

    const/4 v0, 0x4

    const/4 v1, 0x0

    aput-boolean v1, p0, v0

    return-void
.end method

.method public unsetPremiumPending()V
    .locals 2

    iget-object p0, p0, Lcom/evernote/edam/type/PremiumInfo;->__isset_vector:[Z

    const/4 v0, 0x5

    const/4 v1, 0x0

    aput-boolean v1, p0, v0

    return-void
.end method

.method public unsetPremiumRecurring()V
    .locals 2

    iget-object p0, p0, Lcom/evernote/edam/type/PremiumInfo;->__isset_vector:[Z

    const/4 v0, 0x2

    const/4 v1, 0x0

    aput-boolean v1, p0, v0

    return-void
.end method

.method public unsetPremiumUpgradable()V
    .locals 2

    iget-object p0, p0, Lcom/evernote/edam/type/PremiumInfo;->__isset_vector:[Z

    const/16 v0, 0x8

    const/4 v1, 0x0

    aput-boolean v1, p0, v0

    return-void
.end method

.method public unsetSponsoredGroupName()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/PremiumInfo;->sponsoredGroupName:Ljava/lang/String;

    return-void
.end method

.method public unsetSponsoredGroupRole()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evernote/edam/type/PremiumInfo;->sponsoredGroupRole:Lcom/evernote/edam/type/SponsoredGroupRole;

    return-void
.end method

.method public validate()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/evernote/edam/type/PremiumInfo;->isSetCurrentTime()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/evernote/edam/type/PremiumInfo;->isSetPremium()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/evernote/edam/type/PremiumInfo;->isSetPremiumRecurring()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/evernote/edam/type/PremiumInfo;->isSetPremiumExtendable()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/evernote/edam/type/PremiumInfo;->isSetPremiumPending()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/evernote/edam/type/PremiumInfo;->isSetPremiumCancellationPending()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/evernote/edam/type/PremiumInfo;->isSetCanPurchaseUploadAllowance()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/evernote/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'canPurchaseUploadAllowance\' is unset! Struct:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/evernote/edam/type/PremiumInfo;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/evernote/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/evernote/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'premiumCancellationPending\' is unset! Struct:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/evernote/edam/type/PremiumInfo;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/evernote/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Lcom/evernote/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'premiumPending\' is unset! Struct:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/evernote/edam/type/PremiumInfo;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/evernote/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Lcom/evernote/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'premiumExtendable\' is unset! Struct:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/evernote/edam/type/PremiumInfo;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/evernote/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Lcom/evernote/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'premiumRecurring\' is unset! Struct:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/evernote/edam/type/PremiumInfo;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/evernote/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Lcom/evernote/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'premium\' is unset! Struct:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/evernote/edam/type/PremiumInfo;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/evernote/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v0, Lcom/evernote/thrift/protocol/TProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'currentTime\' is unset! Struct:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/evernote/edam/type/PremiumInfo;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/evernote/thrift/protocol/TProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public write(Lcom/evernote/thrift/protocol/TProtocol;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/evernote/edam/type/PremiumInfo;->validate()V

    sget-object v0, Lcom/evernote/edam/type/PremiumInfo;->STRUCT_DESC:Lcom/evernote/thrift/protocol/TStruct;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructBegin(Lcom/evernote/thrift/protocol/TStruct;)V

    sget-object v0, Lcom/evernote/edam/type/PremiumInfo;->CURRENT_TIME_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-wide v0, p0, Lcom/evernote/edam/type/PremiumInfo;->currentTime:J

    invoke-virtual {p1, v0, v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeI64(J)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    sget-object v0, Lcom/evernote/edam/type/PremiumInfo;->PREMIUM_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-boolean v0, p0, Lcom/evernote/edam/type/PremiumInfo;->premium:Z

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeBool(Z)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    sget-object v0, Lcom/evernote/edam/type/PremiumInfo;->PREMIUM_RECURRING_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-boolean v0, p0, Lcom/evernote/edam/type/PremiumInfo;->premiumRecurring:Z

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeBool(Z)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    invoke-virtual {p0}, Lcom/evernote/edam/type/PremiumInfo;->isSetPremiumExpirationDate()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/evernote/edam/type/PremiumInfo;->PREMIUM_EXPIRATION_DATE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-wide v0, p0, Lcom/evernote/edam/type/PremiumInfo;->premiumExpirationDate:J

    invoke-virtual {p1, v0, v1}, Lcom/evernote/thrift/protocol/TProtocol;->writeI64(J)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_0
    sget-object v0, Lcom/evernote/edam/type/PremiumInfo;->PREMIUM_EXTENDABLE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-boolean v0, p0, Lcom/evernote/edam/type/PremiumInfo;->premiumExtendable:Z

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeBool(Z)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    sget-object v0, Lcom/evernote/edam/type/PremiumInfo;->PREMIUM_PENDING_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-boolean v0, p0, Lcom/evernote/edam/type/PremiumInfo;->premiumPending:Z

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeBool(Z)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    sget-object v0, Lcom/evernote/edam/type/PremiumInfo;->PREMIUM_CANCELLATION_PENDING_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-boolean v0, p0, Lcom/evernote/edam/type/PremiumInfo;->premiumCancellationPending:Z

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeBool(Z)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    sget-object v0, Lcom/evernote/edam/type/PremiumInfo;->CAN_PURCHASE_UPLOAD_ALLOWANCE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-boolean v0, p0, Lcom/evernote/edam/type/PremiumInfo;->canPurchaseUploadAllowance:Z

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeBool(Z)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    iget-object v0, p0, Lcom/evernote/edam/type/PremiumInfo;->sponsoredGroupName:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/evernote/edam/type/PremiumInfo;->isSetSponsoredGroupName()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/evernote/edam/type/PremiumInfo;->SPONSORED_GROUP_NAME_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-object v0, p0, Lcom/evernote/edam/type/PremiumInfo;->sponsoredGroupName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeString(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_1
    iget-object v0, p0, Lcom/evernote/edam/type/PremiumInfo;->sponsoredGroupRole:Lcom/evernote/edam/type/SponsoredGroupRole;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/evernote/edam/type/PremiumInfo;->isSetSponsoredGroupRole()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/evernote/edam/type/PremiumInfo;->SPONSORED_GROUP_ROLE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-object v0, p0, Lcom/evernote/edam/type/PremiumInfo;->sponsoredGroupRole:Lcom/evernote/edam/type/SponsoredGroupRole;

    invoke-virtual {v0}, Lcom/evernote/edam/type/SponsoredGroupRole;->getValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeI32(I)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_2
    invoke-virtual {p0}, Lcom/evernote/edam/type/PremiumInfo;->isSetPremiumUpgradable()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/evernote/edam/type/PremiumInfo;->PREMIUM_UPGRADABLE_FIELD_DESC:Lcom/evernote/thrift/protocol/TField;

    invoke-virtual {p1, v0}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldBegin(Lcom/evernote/thrift/protocol/TField;)V

    iget-boolean p0, p0, Lcom/evernote/edam/type/PremiumInfo;->premiumUpgradable:Z

    invoke-virtual {p1, p0}, Lcom/evernote/thrift/protocol/TProtocol;->writeBool(Z)V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldEnd()V

    :cond_3
    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeFieldStop()V

    invoke-virtual {p1}, Lcom/evernote/thrift/protocol/TProtocol;->writeStructEnd()V

    return-void
.end method
