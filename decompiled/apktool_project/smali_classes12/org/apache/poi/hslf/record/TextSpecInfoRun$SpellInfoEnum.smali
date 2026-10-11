.class public final enum Lorg/apache/poi/hslf/record/TextSpecInfoRun$SpellInfoEnum;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hslf/record/TextSpecInfoRun;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SpellInfoEnum"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/hslf/record/TextSpecInfoRun$SpellInfoEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/hslf/record/TextSpecInfoRun$SpellInfoEnum;

.field public static final enum clean:Lorg/apache/poi/hslf/record/TextSpecInfoRun$SpellInfoEnum;

.field public static final enum correct:Lorg/apache/poi/hslf/record/TextSpecInfoRun$SpellInfoEnum;

.field public static final enum error:Lorg/apache/poi/hslf/record/TextSpecInfoRun$SpellInfoEnum;

.field public static final enum grammar:Lorg/apache/poi/hslf/record/TextSpecInfoRun$SpellInfoEnum;


# instance fields
.field final bitField:Lorg/apache/poi/util/BitField;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lorg/apache/poi/hslf/record/TextSpecInfoRun$SpellInfoEnum;

    new-instance v1, Lorg/apache/poi/util/BitField;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lorg/apache/poi/util/BitField;-><init>(I)V

    const-string v3, "error"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1}, Lorg/apache/poi/hslf/record/TextSpecInfoRun$SpellInfoEnum;-><init>(Ljava/lang/String;ILorg/apache/poi/util/BitField;)V

    sput-object v0, Lorg/apache/poi/hslf/record/TextSpecInfoRun$SpellInfoEnum;->error:Lorg/apache/poi/hslf/record/TextSpecInfoRun$SpellInfoEnum;

    new-instance v1, Lorg/apache/poi/hslf/record/TextSpecInfoRun$SpellInfoEnum;

    new-instance v3, Lorg/apache/poi/util/BitField;

    const/4 v5, 0x2

    invoke-direct {v3, v5}, Lorg/apache/poi/util/BitField;-><init>(I)V

    const-string v6, "clean"

    invoke-direct {v1, v6, v2, v3}, Lorg/apache/poi/hslf/record/TextSpecInfoRun$SpellInfoEnum;-><init>(Ljava/lang/String;ILorg/apache/poi/util/BitField;)V

    sput-object v1, Lorg/apache/poi/hslf/record/TextSpecInfoRun$SpellInfoEnum;->clean:Lorg/apache/poi/hslf/record/TextSpecInfoRun$SpellInfoEnum;

    new-instance v2, Lorg/apache/poi/hslf/record/TextSpecInfoRun$SpellInfoEnum;

    new-instance v3, Lorg/apache/poi/util/BitField;

    const/4 v6, 0x4

    invoke-direct {v3, v6}, Lorg/apache/poi/util/BitField;-><init>(I)V

    const-string v6, "grammar"

    invoke-direct {v2, v6, v5, v3}, Lorg/apache/poi/hslf/record/TextSpecInfoRun$SpellInfoEnum;-><init>(Ljava/lang/String;ILorg/apache/poi/util/BitField;)V

    sput-object v2, Lorg/apache/poi/hslf/record/TextSpecInfoRun$SpellInfoEnum;->grammar:Lorg/apache/poi/hslf/record/TextSpecInfoRun$SpellInfoEnum;

    new-instance v3, Lorg/apache/poi/hslf/record/TextSpecInfoRun$SpellInfoEnum;

    new-instance v5, Lorg/apache/poi/util/BitField;

    invoke-direct {v5, v4}, Lorg/apache/poi/util/BitField;-><init>(I)V

    const-string v4, "correct"

    const/4 v6, 0x3

    invoke-direct {v3, v4, v6, v5}, Lorg/apache/poi/hslf/record/TextSpecInfoRun$SpellInfoEnum;-><init>(Ljava/lang/String;ILorg/apache/poi/util/BitField;)V

    sput-object v3, Lorg/apache/poi/hslf/record/TextSpecInfoRun$SpellInfoEnum;->correct:Lorg/apache/poi/hslf/record/TextSpecInfoRun$SpellInfoEnum;

    filled-new-array {v0, v1, v2, v3}, [Lorg/apache/poi/hslf/record/TextSpecInfoRun$SpellInfoEnum;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hslf/record/TextSpecInfoRun$SpellInfoEnum;->$VALUES:[Lorg/apache/poi/hslf/record/TextSpecInfoRun$SpellInfoEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILorg/apache/poi/util/BitField;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/util/BitField;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lorg/apache/poi/hslf/record/TextSpecInfoRun$SpellInfoEnum;->bitField:Lorg/apache/poi/util/BitField;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/hslf/record/TextSpecInfoRun$SpellInfoEnum;
    .locals 1

    const-class v0, Lorg/apache/poi/hslf/record/TextSpecInfoRun$SpellInfoEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/hslf/record/TextSpecInfoRun$SpellInfoEnum;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/hslf/record/TextSpecInfoRun$SpellInfoEnum;
    .locals 1

    sget-object v0, Lorg/apache/poi/hslf/record/TextSpecInfoRun$SpellInfoEnum;->$VALUES:[Lorg/apache/poi/hslf/record/TextSpecInfoRun$SpellInfoEnum;

    invoke-virtual {v0}, [Lorg/apache/poi/hslf/record/TextSpecInfoRun$SpellInfoEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/hslf/record/TextSpecInfoRun$SpellInfoEnum;

    return-object v0
.end method
