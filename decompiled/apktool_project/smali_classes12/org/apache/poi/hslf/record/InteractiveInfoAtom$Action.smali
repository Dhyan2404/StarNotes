.class public final enum Lorg/apache/poi/hslf/record/InteractiveInfoAtom$Action;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hslf/record/InteractiveInfoAtom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Action"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/hslf/record/InteractiveInfoAtom$Action;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/hslf/record/InteractiveInfoAtom$Action;

.field public static final enum CUSTOM_SHOW:Lorg/apache/poi/hslf/record/InteractiveInfoAtom$Action;

.field public static final enum HYPERLINK:Lorg/apache/poi/hslf/record/InteractiveInfoAtom$Action;

.field public static final enum JUMP:Lorg/apache/poi/hslf/record/InteractiveInfoAtom$Action;

.field public static final enum MACRO:Lorg/apache/poi/hslf/record/InteractiveInfoAtom$Action;

.field public static final enum MEDIA:Lorg/apache/poi/hslf/record/InteractiveInfoAtom$Action;

.field public static final enum NONE:Lorg/apache/poi/hslf/record/InteractiveInfoAtom$Action;

.field public static final enum OLE:Lorg/apache/poi/hslf/record/InteractiveInfoAtom$Action;

.field public static final enum RUN_PROGRAM:Lorg/apache/poi/hslf/record/InteractiveInfoAtom$Action;


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    new-instance v0, Lorg/apache/poi/hslf/record/InteractiveInfoAtom$Action;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/hslf/record/InteractiveInfoAtom$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/hslf/record/InteractiveInfoAtom$Action;->NONE:Lorg/apache/poi/hslf/record/InteractiveInfoAtom$Action;

    new-instance v1, Lorg/apache/poi/hslf/record/InteractiveInfoAtom$Action;

    const-string v2, "MACRO"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/apache/poi/hslf/record/InteractiveInfoAtom$Action;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/poi/hslf/record/InteractiveInfoAtom$Action;->MACRO:Lorg/apache/poi/hslf/record/InteractiveInfoAtom$Action;

    new-instance v2, Lorg/apache/poi/hslf/record/InteractiveInfoAtom$Action;

    const-string v3, "RUN_PROGRAM"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/apache/poi/hslf/record/InteractiveInfoAtom$Action;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/apache/poi/hslf/record/InteractiveInfoAtom$Action;->RUN_PROGRAM:Lorg/apache/poi/hslf/record/InteractiveInfoAtom$Action;

    new-instance v3, Lorg/apache/poi/hslf/record/InteractiveInfoAtom$Action;

    const-string v4, "JUMP"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lorg/apache/poi/hslf/record/InteractiveInfoAtom$Action;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/apache/poi/hslf/record/InteractiveInfoAtom$Action;->JUMP:Lorg/apache/poi/hslf/record/InteractiveInfoAtom$Action;

    new-instance v4, Lorg/apache/poi/hslf/record/InteractiveInfoAtom$Action;

    const-string v5, "HYPERLINK"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lorg/apache/poi/hslf/record/InteractiveInfoAtom$Action;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/apache/poi/hslf/record/InteractiveInfoAtom$Action;->HYPERLINK:Lorg/apache/poi/hslf/record/InteractiveInfoAtom$Action;

    new-instance v5, Lorg/apache/poi/hslf/record/InteractiveInfoAtom$Action;

    const-string v6, "OLE"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lorg/apache/poi/hslf/record/InteractiveInfoAtom$Action;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/apache/poi/hslf/record/InteractiveInfoAtom$Action;->OLE:Lorg/apache/poi/hslf/record/InteractiveInfoAtom$Action;

    new-instance v6, Lorg/apache/poi/hslf/record/InteractiveInfoAtom$Action;

    const-string v7, "MEDIA"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lorg/apache/poi/hslf/record/InteractiveInfoAtom$Action;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lorg/apache/poi/hslf/record/InteractiveInfoAtom$Action;->MEDIA:Lorg/apache/poi/hslf/record/InteractiveInfoAtom$Action;

    new-instance v7, Lorg/apache/poi/hslf/record/InteractiveInfoAtom$Action;

    const-string v8, "CUSTOM_SHOW"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lorg/apache/poi/hslf/record/InteractiveInfoAtom$Action;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lorg/apache/poi/hslf/record/InteractiveInfoAtom$Action;->CUSTOM_SHOW:Lorg/apache/poi/hslf/record/InteractiveInfoAtom$Action;

    filled-new-array/range {v0 .. v7}, [Lorg/apache/poi/hslf/record/InteractiveInfoAtom$Action;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hslf/record/InteractiveInfoAtom$Action;->$VALUES:[Lorg/apache/poi/hslf/record/InteractiveInfoAtom$Action;

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

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/hslf/record/InteractiveInfoAtom$Action;
    .locals 1

    const-class v0, Lorg/apache/poi/hslf/record/InteractiveInfoAtom$Action;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/hslf/record/InteractiveInfoAtom$Action;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/hslf/record/InteractiveInfoAtom$Action;
    .locals 1

    sget-object v0, Lorg/apache/poi/hslf/record/InteractiveInfoAtom$Action;->$VALUES:[Lorg/apache/poi/hslf/record/InteractiveInfoAtom$Action;

    invoke-virtual {v0}, [Lorg/apache/poi/hslf/record/InteractiveInfoAtom$Action;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/hslf/record/InteractiveInfoAtom$Action;

    return-object v0
.end method
