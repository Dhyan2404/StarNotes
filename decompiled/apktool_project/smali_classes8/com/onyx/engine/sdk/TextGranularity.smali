.class public final enum Lcom/onyx/engine/sdk/TextGranularity;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/onyx/engine/sdk/TextGranularity;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/onyx/engine/sdk/TextGranularity;

.field public static final enum kCharacter:Lcom/onyx/engine/sdk/TextGranularity;

.field public static final enum kDocumentBoundary:Lcom/onyx/engine/sdk/TextGranularity;

.field public static final enum kLine:Lcom/onyx/engine/sdk/TextGranularity;

.field public static final enum kLineBoundary:Lcom/onyx/engine/sdk/TextGranularity;

.field public static final enum kParagraph:Lcom/onyx/engine/sdk/TextGranularity;

.field public static final enum kParagraphBoundary:Lcom/onyx/engine/sdk/TextGranularity;

.field public static final enum kSentence:Lcom/onyx/engine/sdk/TextGranularity;

.field public static final enum kSentenceBoundary:Lcom/onyx/engine/sdk/TextGranularity;

.field public static final enum kWord:Lcom/onyx/engine/sdk/TextGranularity;


# direct methods
.method private static synthetic $values()[Lcom/onyx/engine/sdk/TextGranularity;
    .locals 9

    sget-object v0, Lcom/onyx/engine/sdk/TextGranularity;->kCharacter:Lcom/onyx/engine/sdk/TextGranularity;

    sget-object v1, Lcom/onyx/engine/sdk/TextGranularity;->kWord:Lcom/onyx/engine/sdk/TextGranularity;

    sget-object v2, Lcom/onyx/engine/sdk/TextGranularity;->kSentence:Lcom/onyx/engine/sdk/TextGranularity;

    sget-object v3, Lcom/onyx/engine/sdk/TextGranularity;->kLine:Lcom/onyx/engine/sdk/TextGranularity;

    sget-object v4, Lcom/onyx/engine/sdk/TextGranularity;->kParagraph:Lcom/onyx/engine/sdk/TextGranularity;

    sget-object v5, Lcom/onyx/engine/sdk/TextGranularity;->kSentenceBoundary:Lcom/onyx/engine/sdk/TextGranularity;

    sget-object v6, Lcom/onyx/engine/sdk/TextGranularity;->kLineBoundary:Lcom/onyx/engine/sdk/TextGranularity;

    sget-object v7, Lcom/onyx/engine/sdk/TextGranularity;->kParagraphBoundary:Lcom/onyx/engine/sdk/TextGranularity;

    sget-object v8, Lcom/onyx/engine/sdk/TextGranularity;->kDocumentBoundary:Lcom/onyx/engine/sdk/TextGranularity;

    filled-new-array/range {v0 .. v8}, [Lcom/onyx/engine/sdk/TextGranularity;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/onyx/engine/sdk/TextGranularity;

    const-string v1, "kCharacter"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/onyx/engine/sdk/TextGranularity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/engine/sdk/TextGranularity;->kCharacter:Lcom/onyx/engine/sdk/TextGranularity;

    new-instance v0, Lcom/onyx/engine/sdk/TextGranularity;

    const-string v1, "kWord"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/onyx/engine/sdk/TextGranularity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/engine/sdk/TextGranularity;->kWord:Lcom/onyx/engine/sdk/TextGranularity;

    new-instance v0, Lcom/onyx/engine/sdk/TextGranularity;

    const-string v1, "kSentence"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/onyx/engine/sdk/TextGranularity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/engine/sdk/TextGranularity;->kSentence:Lcom/onyx/engine/sdk/TextGranularity;

    new-instance v0, Lcom/onyx/engine/sdk/TextGranularity;

    const-string v1, "kLine"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/onyx/engine/sdk/TextGranularity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/engine/sdk/TextGranularity;->kLine:Lcom/onyx/engine/sdk/TextGranularity;

    new-instance v0, Lcom/onyx/engine/sdk/TextGranularity;

    const-string v1, "kParagraph"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/onyx/engine/sdk/TextGranularity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/engine/sdk/TextGranularity;->kParagraph:Lcom/onyx/engine/sdk/TextGranularity;

    new-instance v0, Lcom/onyx/engine/sdk/TextGranularity;

    const-string v1, "kSentenceBoundary"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/onyx/engine/sdk/TextGranularity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/engine/sdk/TextGranularity;->kSentenceBoundary:Lcom/onyx/engine/sdk/TextGranularity;

    new-instance v0, Lcom/onyx/engine/sdk/TextGranularity;

    const-string v1, "kLineBoundary"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/onyx/engine/sdk/TextGranularity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/engine/sdk/TextGranularity;->kLineBoundary:Lcom/onyx/engine/sdk/TextGranularity;

    new-instance v0, Lcom/onyx/engine/sdk/TextGranularity;

    const-string v1, "kParagraphBoundary"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/onyx/engine/sdk/TextGranularity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/engine/sdk/TextGranularity;->kParagraphBoundary:Lcom/onyx/engine/sdk/TextGranularity;

    new-instance v0, Lcom/onyx/engine/sdk/TextGranularity;

    const-string v1, "kDocumentBoundary"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/onyx/engine/sdk/TextGranularity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/engine/sdk/TextGranularity;->kDocumentBoundary:Lcom/onyx/engine/sdk/TextGranularity;

    invoke-static {}, Lcom/onyx/engine/sdk/TextGranularity;->$values()[Lcom/onyx/engine/sdk/TextGranularity;

    move-result-object v0

    sput-object v0, Lcom/onyx/engine/sdk/TextGranularity;->$VALUES:[Lcom/onyx/engine/sdk/TextGranularity;

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

.method public static valueOf(Ljava/lang/String;)Lcom/onyx/engine/sdk/TextGranularity;
    .locals 1

    const-class v0, Lcom/onyx/engine/sdk/TextGranularity;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/onyx/engine/sdk/TextGranularity;

    return-object p0
.end method

.method public static values()[Lcom/onyx/engine/sdk/TextGranularity;
    .locals 1

    sget-object v0, Lcom/onyx/engine/sdk/TextGranularity;->$VALUES:[Lcom/onyx/engine/sdk/TextGranularity;

    invoke-virtual {v0}, [Lcom/onyx/engine/sdk/TextGranularity;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/onyx/engine/sdk/TextGranularity;

    return-object v0
.end method
