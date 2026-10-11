.class public final enum Lcom/dropbox/core/v2/team/LegalHoldsListHeldRevisionsError;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/team/LegalHoldsListHeldRevisionsError$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dropbox/core/v2/team/LegalHoldsListHeldRevisionsError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dropbox/core/v2/team/LegalHoldsListHeldRevisionsError;

.field public static final enum INACTIVE_LEGAL_HOLD:Lcom/dropbox/core/v2/team/LegalHoldsListHeldRevisionsError;

.field public static final enum INSUFFICIENT_PERMISSIONS:Lcom/dropbox/core/v2/team/LegalHoldsListHeldRevisionsError;

.field public static final enum LEGAL_HOLD_STILL_EMPTY:Lcom/dropbox/core/v2/team/LegalHoldsListHeldRevisionsError;

.field public static final enum OTHER:Lcom/dropbox/core/v2/team/LegalHoldsListHeldRevisionsError;

.field public static final enum TRANSIENT_ERROR:Lcom/dropbox/core/v2/team/LegalHoldsListHeldRevisionsError;

.field public static final enum UNKNOWN_LEGAL_HOLD_ERROR:Lcom/dropbox/core/v2/team/LegalHoldsListHeldRevisionsError;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/dropbox/core/v2/team/LegalHoldsListHeldRevisionsError;

    const-string v1, "UNKNOWN_LEGAL_HOLD_ERROR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/team/LegalHoldsListHeldRevisionsError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/team/LegalHoldsListHeldRevisionsError;->UNKNOWN_LEGAL_HOLD_ERROR:Lcom/dropbox/core/v2/team/LegalHoldsListHeldRevisionsError;

    new-instance v1, Lcom/dropbox/core/v2/team/LegalHoldsListHeldRevisionsError;

    const-string v2, "INSUFFICIENT_PERMISSIONS"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/dropbox/core/v2/team/LegalHoldsListHeldRevisionsError;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/dropbox/core/v2/team/LegalHoldsListHeldRevisionsError;->INSUFFICIENT_PERMISSIONS:Lcom/dropbox/core/v2/team/LegalHoldsListHeldRevisionsError;

    new-instance v2, Lcom/dropbox/core/v2/team/LegalHoldsListHeldRevisionsError;

    const-string v3, "OTHER"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/dropbox/core/v2/team/LegalHoldsListHeldRevisionsError;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/dropbox/core/v2/team/LegalHoldsListHeldRevisionsError;->OTHER:Lcom/dropbox/core/v2/team/LegalHoldsListHeldRevisionsError;

    new-instance v3, Lcom/dropbox/core/v2/team/LegalHoldsListHeldRevisionsError;

    const-string v4, "TRANSIENT_ERROR"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/dropbox/core/v2/team/LegalHoldsListHeldRevisionsError;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/dropbox/core/v2/team/LegalHoldsListHeldRevisionsError;->TRANSIENT_ERROR:Lcom/dropbox/core/v2/team/LegalHoldsListHeldRevisionsError;

    new-instance v4, Lcom/dropbox/core/v2/team/LegalHoldsListHeldRevisionsError;

    const-string v5, "LEGAL_HOLD_STILL_EMPTY"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/dropbox/core/v2/team/LegalHoldsListHeldRevisionsError;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/dropbox/core/v2/team/LegalHoldsListHeldRevisionsError;->LEGAL_HOLD_STILL_EMPTY:Lcom/dropbox/core/v2/team/LegalHoldsListHeldRevisionsError;

    new-instance v5, Lcom/dropbox/core/v2/team/LegalHoldsListHeldRevisionsError;

    const-string v6, "INACTIVE_LEGAL_HOLD"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/dropbox/core/v2/team/LegalHoldsListHeldRevisionsError;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/dropbox/core/v2/team/LegalHoldsListHeldRevisionsError;->INACTIVE_LEGAL_HOLD:Lcom/dropbox/core/v2/team/LegalHoldsListHeldRevisionsError;

    filled-new-array/range {v0 .. v5}, [Lcom/dropbox/core/v2/team/LegalHoldsListHeldRevisionsError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/team/LegalHoldsListHeldRevisionsError;->$VALUES:[Lcom/dropbox/core/v2/team/LegalHoldsListHeldRevisionsError;

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

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/team/LegalHoldsListHeldRevisionsError;
    .locals 1

    const-class v0, Lcom/dropbox/core/v2/team/LegalHoldsListHeldRevisionsError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/team/LegalHoldsListHeldRevisionsError;

    return-object p0
.end method

.method public static values()[Lcom/dropbox/core/v2/team/LegalHoldsListHeldRevisionsError;
    .locals 1

    sget-object v0, Lcom/dropbox/core/v2/team/LegalHoldsListHeldRevisionsError;->$VALUES:[Lcom/dropbox/core/v2/team/LegalHoldsListHeldRevisionsError;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/team/LegalHoldsListHeldRevisionsError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/team/LegalHoldsListHeldRevisionsError;

    return-object v0
.end method
