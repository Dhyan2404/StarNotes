.class public final enum Lnet/sf/saxon/trans/RecoveryPolicy;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/sf/saxon/trans/RecoveryPolicy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/sf/saxon/trans/RecoveryPolicy;

.field public static final enum DO_NOT_RECOVER:Lnet/sf/saxon/trans/RecoveryPolicy;

.field public static final enum RECOVER_SILENTLY:Lnet/sf/saxon/trans/RecoveryPolicy;

.field public static final enum RECOVER_WITH_WARNINGS:Lnet/sf/saxon/trans/RecoveryPolicy;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lnet/sf/saxon/trans/RecoveryPolicy;

    const-string v1, "RECOVER_SILENTLY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/sf/saxon/trans/RecoveryPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/sf/saxon/trans/RecoveryPolicy;->RECOVER_SILENTLY:Lnet/sf/saxon/trans/RecoveryPolicy;

    new-instance v1, Lnet/sf/saxon/trans/RecoveryPolicy;

    const-string v2, "RECOVER_WITH_WARNINGS"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lnet/sf/saxon/trans/RecoveryPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lnet/sf/saxon/trans/RecoveryPolicy;->RECOVER_WITH_WARNINGS:Lnet/sf/saxon/trans/RecoveryPolicy;

    new-instance v2, Lnet/sf/saxon/trans/RecoveryPolicy;

    const-string v3, "DO_NOT_RECOVER"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lnet/sf/saxon/trans/RecoveryPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lnet/sf/saxon/trans/RecoveryPolicy;->DO_NOT_RECOVER:Lnet/sf/saxon/trans/RecoveryPolicy;

    filled-new-array {v0, v1, v2}, [Lnet/sf/saxon/trans/RecoveryPolicy;

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/trans/RecoveryPolicy;->$VALUES:[Lnet/sf/saxon/trans/RecoveryPolicy;

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

.method public static fromString(Ljava/lang/String;)Lnet/sf/saxon/trans/RecoveryPolicy;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "doNotRecover"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_1
    const-string v0, "recoverSilently"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v0, "recoverWithWarnings"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized value of RECOVERY_POLICY_NAME = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    sget-object p0, Lnet/sf/saxon/trans/RecoveryPolicy;->DO_NOT_RECOVER:Lnet/sf/saxon/trans/RecoveryPolicy;

    return-object p0

    :pswitch_1
    sget-object p0, Lnet/sf/saxon/trans/RecoveryPolicy;->RECOVER_SILENTLY:Lnet/sf/saxon/trans/RecoveryPolicy;

    return-object p0

    :pswitch_2
    sget-object p0, Lnet/sf/saxon/trans/RecoveryPolicy;->RECOVER_WITH_WARNINGS:Lnet/sf/saxon/trans/RecoveryPolicy;

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x60da413f -> :sswitch_2
        -0x25bc31da -> :sswitch_1
        -0x19d3204 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/sf/saxon/trans/RecoveryPolicy;
    .locals 1

    const-class v0, Lnet/sf/saxon/trans/RecoveryPolicy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/trans/RecoveryPolicy;

    return-object p0
.end method

.method public static values()[Lnet/sf/saxon/trans/RecoveryPolicy;
    .locals 1

    sget-object v0, Lnet/sf/saxon/trans/RecoveryPolicy;->$VALUES:[Lnet/sf/saxon/trans/RecoveryPolicy;

    invoke-virtual {v0}, [Lnet/sf/saxon/trans/RecoveryPolicy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/sf/saxon/trans/RecoveryPolicy;

    return-object v0
.end method
