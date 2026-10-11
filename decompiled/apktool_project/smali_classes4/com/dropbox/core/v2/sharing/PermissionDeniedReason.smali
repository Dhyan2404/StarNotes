.class public final Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$b;,
        Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;
    }
.end annotation


# static fields
.field public static final FOLDER_IS_INSIDE_SHARED_FOLDER:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

.field public static final FOLDER_IS_LIMITED_TEAM_FOLDER:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

.field public static final OTHER:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

.field public static final OWNER_NOT_ON_TEAM:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

.field public static final PERMISSION_DENIED:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

.field public static final RESTRICTED_BY_PARENT_FOLDER:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

.field public static final RESTRICTED_BY_TEAM:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

.field public static final TARGET_IS_INDIRECT_MEMBER:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

.field public static final TARGET_IS_OWNER:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

.field public static final TARGET_IS_SELF:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

.field public static final TARGET_NOT_ACTIVE:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

.field public static final USER_ACCOUNT_TYPE:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

.field public static final USER_NOT_ALLOWED_BY_OWNER:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

.field public static final USER_NOT_ON_TEAM:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

.field public static final USER_NOT_SAME_TEAM_AS_OWNER:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;


# instance fields
.field public a:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

.field public b:Lcom/dropbox/core/v2/sharing/InsufficientPlan;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;->USER_NOT_SAME_TEAM_AS_OWNER:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->b(Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;)Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->USER_NOT_SAME_TEAM_AS_OWNER:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    new-instance v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;->USER_NOT_ALLOWED_BY_OWNER:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->b(Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;)Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->USER_NOT_ALLOWED_BY_OWNER:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    new-instance v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;->TARGET_IS_INDIRECT_MEMBER:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->b(Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;)Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->TARGET_IS_INDIRECT_MEMBER:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    new-instance v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;->TARGET_IS_OWNER:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->b(Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;)Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->TARGET_IS_OWNER:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    new-instance v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;->TARGET_IS_SELF:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->b(Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;)Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->TARGET_IS_SELF:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    new-instance v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;->TARGET_NOT_ACTIVE:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->b(Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;)Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->TARGET_NOT_ACTIVE:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    new-instance v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;->FOLDER_IS_LIMITED_TEAM_FOLDER:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->b(Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;)Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->FOLDER_IS_LIMITED_TEAM_FOLDER:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    new-instance v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;->OWNER_NOT_ON_TEAM:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->b(Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;)Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->OWNER_NOT_ON_TEAM:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    new-instance v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;->PERMISSION_DENIED:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->b(Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;)Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->PERMISSION_DENIED:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    new-instance v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;->RESTRICTED_BY_TEAM:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->b(Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;)Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->RESTRICTED_BY_TEAM:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    new-instance v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;->USER_ACCOUNT_TYPE:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->b(Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;)Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->USER_ACCOUNT_TYPE:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    new-instance v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;->USER_NOT_ON_TEAM:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->b(Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;)Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->USER_NOT_ON_TEAM:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    new-instance v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;->FOLDER_IS_INSIDE_SHARED_FOLDER:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->b(Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;)Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->FOLDER_IS_INSIDE_SHARED_FOLDER:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    new-instance v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;->RESTRICTED_BY_PARENT_FOLDER:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->b(Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;)Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->RESTRICTED_BY_PARENT_FOLDER:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    new-instance v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->b(Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;)Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->OTHER:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;)Lcom/dropbox/core/v2/sharing/InsufficientPlan;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->b:Lcom/dropbox/core/v2/sharing/InsufficientPlan;

    return-object p0
.end method

.method public static insufficientPlan(Lcom/dropbox/core/v2/sharing/InsufficientPlan;)Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;
    .locals 2

    if-eqz p0, :cond_0

    new-instance v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;->INSUFFICIENT_PLAN:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    invoke-virtual {v0, v1, p0}, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->c(Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;Lcom/dropbox/core/v2/sharing/InsufficientPlan;)Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final b(Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;)Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;
    .locals 0

    new-instance p0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    invoke-direct {p0}, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;-><init>()V

    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->a:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    return-object p0
.end method

.method public final c(Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;Lcom/dropbox/core/v2/sharing/InsufficientPlan;)Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;
    .locals 0

    new-instance p0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    invoke-direct {p0}, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;-><init>()V

    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->a:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    iput-object p2, p0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->b:Lcom/dropbox/core/v2/sharing/InsufficientPlan;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    instance-of v2, p1, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    if-eqz v2, :cond_5

    check-cast p1, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->a:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->a:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    sget-object v3, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$a;->a:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_0

    return v1

    :pswitch_0
    return v0

    :pswitch_1
    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->b:Lcom/dropbox/core/v2/sharing/InsufficientPlan;

    iget-object p1, p1, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->b:Lcom/dropbox/core/v2/sharing/InsufficientPlan;

    if-eq p0, p1, :cond_4

    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/sharing/InsufficientPlan;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    :cond_4
    :goto_0
    :pswitch_2
    return v0

    :cond_5
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getInsufficientPlanValue()Lcom/dropbox/core/v2/sharing/InsufficientPlan;
    .locals 3

    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->a:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;->INSUFFICIENT_PLAN:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->b:Lcom/dropbox/core/v2/sharing/InsufficientPlan;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.INSUFFICIENT_PLAN, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->a:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->a:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->b:Lcom/dropbox/core/v2/sharing/InsufficientPlan;

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public isFolderIsInsideSharedFolder()Z
    .locals 1

    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->a:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    sget-object v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;->FOLDER_IS_INSIDE_SHARED_FOLDER:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isFolderIsLimitedTeamFolder()Z
    .locals 1

    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->a:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    sget-object v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;->FOLDER_IS_LIMITED_TEAM_FOLDER:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isInsufficientPlan()Z
    .locals 1

    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->a:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    sget-object v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;->INSUFFICIENT_PLAN:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isOther()Z
    .locals 1

    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->a:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    sget-object v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isOwnerNotOnTeam()Z
    .locals 1

    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->a:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    sget-object v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;->OWNER_NOT_ON_TEAM:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isPermissionDenied()Z
    .locals 1

    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->a:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    sget-object v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;->PERMISSION_DENIED:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isRestrictedByParentFolder()Z
    .locals 1

    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->a:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    sget-object v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;->RESTRICTED_BY_PARENT_FOLDER:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isRestrictedByTeam()Z
    .locals 1

    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->a:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    sget-object v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;->RESTRICTED_BY_TEAM:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isTargetIsIndirectMember()Z
    .locals 1

    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->a:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    sget-object v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;->TARGET_IS_INDIRECT_MEMBER:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isTargetIsOwner()Z
    .locals 1

    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->a:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    sget-object v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;->TARGET_IS_OWNER:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isTargetIsSelf()Z
    .locals 1

    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->a:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    sget-object v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;->TARGET_IS_SELF:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isTargetNotActive()Z
    .locals 1

    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->a:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    sget-object v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;->TARGET_NOT_ACTIVE:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isUserAccountType()Z
    .locals 1

    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->a:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    sget-object v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;->USER_ACCOUNT_TYPE:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isUserNotAllowedByOwner()Z
    .locals 1

    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->a:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    sget-object v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;->USER_NOT_ALLOWED_BY_OWNER:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isUserNotOnTeam()Z
    .locals 1

    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->a:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    sget-object v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;->USER_NOT_ON_TEAM:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isUserNotSameTeamAsOwner()Z
    .locals 1

    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->a:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    sget-object v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;->USER_NOT_SAME_TEAM_AS_OWNER:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public tag()Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->a:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$b;->b:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$b;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$b;->b:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$b;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
