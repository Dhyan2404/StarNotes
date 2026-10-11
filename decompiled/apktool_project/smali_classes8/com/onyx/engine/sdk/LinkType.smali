.class public final enum Lcom/onyx/engine/sdk/LinkType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/onyx/engine/sdk/LinkType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/onyx/engine/sdk/LinkType;

.field public static final enum FOOTNOTE_CONTENT:Lcom/onyx/engine/sdk/LinkType;

.field public static final enum FOOTNOTE_HINT:Lcom/onyx/engine/sdk/LinkType;

.field public static final enum FOOTNOTE_REF:Lcom/onyx/engine/sdk/LinkType;

.field public static final enum FOOTNOTE_REF_CONTENT:Lcom/onyx/engine/sdk/LinkType;

.field public static final enum NORMAL_POSITION:Lcom/onyx/engine/sdk/LinkType;

.field public static final enum NOT_LOADED:Lcom/onyx/engine/sdk/LinkType;

.field public static final enum TOC_REF:Lcom/onyx/engine/sdk/LinkType;

.field public static final enum UNKNOWN:Lcom/onyx/engine/sdk/LinkType;

.field public static final enum WEBSITE:Lcom/onyx/engine/sdk/LinkType;


# direct methods
.method private static synthetic $values()[Lcom/onyx/engine/sdk/LinkType;
    .locals 9

    sget-object v0, Lcom/onyx/engine/sdk/LinkType;->UNKNOWN:Lcom/onyx/engine/sdk/LinkType;

    sget-object v1, Lcom/onyx/engine/sdk/LinkType;->NOT_LOADED:Lcom/onyx/engine/sdk/LinkType;

    sget-object v2, Lcom/onyx/engine/sdk/LinkType;->WEBSITE:Lcom/onyx/engine/sdk/LinkType;

    sget-object v3, Lcom/onyx/engine/sdk/LinkType;->FOOTNOTE_REF:Lcom/onyx/engine/sdk/LinkType;

    sget-object v4, Lcom/onyx/engine/sdk/LinkType;->FOOTNOTE_CONTENT:Lcom/onyx/engine/sdk/LinkType;

    sget-object v5, Lcom/onyx/engine/sdk/LinkType;->TOC_REF:Lcom/onyx/engine/sdk/LinkType;

    sget-object v6, Lcom/onyx/engine/sdk/LinkType;->FOOTNOTE_HINT:Lcom/onyx/engine/sdk/LinkType;

    sget-object v7, Lcom/onyx/engine/sdk/LinkType;->FOOTNOTE_REF_CONTENT:Lcom/onyx/engine/sdk/LinkType;

    sget-object v8, Lcom/onyx/engine/sdk/LinkType;->NORMAL_POSITION:Lcom/onyx/engine/sdk/LinkType;

    filled-new-array/range {v0 .. v8}, [Lcom/onyx/engine/sdk/LinkType;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/onyx/engine/sdk/LinkType;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/onyx/engine/sdk/LinkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/engine/sdk/LinkType;->UNKNOWN:Lcom/onyx/engine/sdk/LinkType;

    new-instance v0, Lcom/onyx/engine/sdk/LinkType;

    const-string v1, "NOT_LOADED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/onyx/engine/sdk/LinkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/engine/sdk/LinkType;->NOT_LOADED:Lcom/onyx/engine/sdk/LinkType;

    new-instance v0, Lcom/onyx/engine/sdk/LinkType;

    const-string v1, "WEBSITE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/onyx/engine/sdk/LinkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/engine/sdk/LinkType;->WEBSITE:Lcom/onyx/engine/sdk/LinkType;

    new-instance v0, Lcom/onyx/engine/sdk/LinkType;

    const-string v1, "FOOTNOTE_REF"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/onyx/engine/sdk/LinkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/engine/sdk/LinkType;->FOOTNOTE_REF:Lcom/onyx/engine/sdk/LinkType;

    new-instance v0, Lcom/onyx/engine/sdk/LinkType;

    const-string v1, "FOOTNOTE_CONTENT"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/onyx/engine/sdk/LinkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/engine/sdk/LinkType;->FOOTNOTE_CONTENT:Lcom/onyx/engine/sdk/LinkType;

    new-instance v0, Lcom/onyx/engine/sdk/LinkType;

    const-string v1, "TOC_REF"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/onyx/engine/sdk/LinkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/engine/sdk/LinkType;->TOC_REF:Lcom/onyx/engine/sdk/LinkType;

    new-instance v0, Lcom/onyx/engine/sdk/LinkType;

    const-string v1, "FOOTNOTE_HINT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/onyx/engine/sdk/LinkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/engine/sdk/LinkType;->FOOTNOTE_HINT:Lcom/onyx/engine/sdk/LinkType;

    new-instance v0, Lcom/onyx/engine/sdk/LinkType;

    const-string v1, "FOOTNOTE_REF_CONTENT"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/onyx/engine/sdk/LinkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/engine/sdk/LinkType;->FOOTNOTE_REF_CONTENT:Lcom/onyx/engine/sdk/LinkType;

    new-instance v0, Lcom/onyx/engine/sdk/LinkType;

    const-string v1, "NORMAL_POSITION"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/onyx/engine/sdk/LinkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/engine/sdk/LinkType;->NORMAL_POSITION:Lcom/onyx/engine/sdk/LinkType;

    invoke-static {}, Lcom/onyx/engine/sdk/LinkType;->$values()[Lcom/onyx/engine/sdk/LinkType;

    move-result-object v0

    sput-object v0, Lcom/onyx/engine/sdk/LinkType;->$VALUES:[Lcom/onyx/engine/sdk/LinkType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/onyx/engine/sdk/LinkType;
    .locals 1

    const-class v0, Lcom/onyx/engine/sdk/LinkType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/onyx/engine/sdk/LinkType;

    return-object p0
.end method

.method public static values()[Lcom/onyx/engine/sdk/LinkType;
    .locals 1

    sget-object v0, Lcom/onyx/engine/sdk/LinkType;->$VALUES:[Lcom/onyx/engine/sdk/LinkType;

    invoke-virtual {v0}, [Lcom/onyx/engine/sdk/LinkType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/onyx/engine/sdk/LinkType;

    return-object v0
.end method
