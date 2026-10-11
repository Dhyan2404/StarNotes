.class public final enum Lorg/apache/poi/hwmf/record/HwmfDraw$WmfArc$WmfArcClosure;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hwmf/record/HwmfDraw$WmfArc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WmfArcClosure"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/hwmf/record/HwmfDraw$WmfArc$WmfArcClosure;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/hwmf/record/HwmfDraw$WmfArc$WmfArcClosure;

.field public static final enum ARC:Lorg/apache/poi/hwmf/record/HwmfDraw$WmfArc$WmfArcClosure;

.field public static final enum CHORD:Lorg/apache/poi/hwmf/record/HwmfDraw$WmfArc$WmfArcClosure;

.field public static final enum PIE:Lorg/apache/poi/hwmf/record/HwmfDraw$WmfArc$WmfArcClosure;


# instance fields
.field public final awtType:I

.field public final drawStyle:Lorg/apache/poi/hwmf/draw/HwmfGraphics$FillDrawStyle;

.field public final recordType:Lorg/apache/poi/hwmf/record/HwmfRecordType;


# direct methods
.method public static constructor <clinit>()V
    .locals 18

    new-instance v6, Lorg/apache/poi/hwmf/record/HwmfDraw$WmfArc$WmfArcClosure;

    const-string v1, "ARC"

    const/4 v2, 0x0

    sget-object v3, Lorg/apache/poi/hwmf/record/HwmfRecordType;->arc:Lorg/apache/poi/hwmf/record/HwmfRecordType;

    const/4 v4, 0x0

    sget-object v5, Lorg/apache/poi/hwmf/draw/HwmfGraphics$FillDrawStyle;->DRAW:Lorg/apache/poi/hwmf/draw/HwmfGraphics$FillDrawStyle;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/hwmf/record/HwmfDraw$WmfArc$WmfArcClosure;-><init>(Ljava/lang/String;ILorg/apache/poi/hwmf/record/HwmfRecordType;ILorg/apache/poi/hwmf/draw/HwmfGraphics$FillDrawStyle;)V

    sput-object v6, Lorg/apache/poi/hwmf/record/HwmfDraw$WmfArc$WmfArcClosure;->ARC:Lorg/apache/poi/hwmf/record/HwmfDraw$WmfArc$WmfArcClosure;

    new-instance v0, Lorg/apache/poi/hwmf/record/HwmfDraw$WmfArc$WmfArcClosure;

    const-string v8, "CHORD"

    const/4 v9, 0x1

    sget-object v10, Lorg/apache/poi/hwmf/record/HwmfRecordType;->chord:Lorg/apache/poi/hwmf/record/HwmfRecordType;

    const/4 v11, 0x1

    sget-object v17, Lorg/apache/poi/hwmf/draw/HwmfGraphics$FillDrawStyle;->FILL_DRAW:Lorg/apache/poi/hwmf/draw/HwmfGraphics$FillDrawStyle;

    move-object v7, v0

    move-object/from16 v12, v17

    invoke-direct/range {v7 .. v12}, Lorg/apache/poi/hwmf/record/HwmfDraw$WmfArc$WmfArcClosure;-><init>(Ljava/lang/String;ILorg/apache/poi/hwmf/record/HwmfRecordType;ILorg/apache/poi/hwmf/draw/HwmfGraphics$FillDrawStyle;)V

    sput-object v0, Lorg/apache/poi/hwmf/record/HwmfDraw$WmfArc$WmfArcClosure;->CHORD:Lorg/apache/poi/hwmf/record/HwmfDraw$WmfArc$WmfArcClosure;

    new-instance v1, Lorg/apache/poi/hwmf/record/HwmfDraw$WmfArc$WmfArcClosure;

    const-string v13, "PIE"

    const/4 v14, 0x2

    sget-object v15, Lorg/apache/poi/hwmf/record/HwmfRecordType;->pie:Lorg/apache/poi/hwmf/record/HwmfRecordType;

    const/16 v16, 0x2

    move-object v12, v1

    invoke-direct/range {v12 .. v17}, Lorg/apache/poi/hwmf/record/HwmfDraw$WmfArc$WmfArcClosure;-><init>(Ljava/lang/String;ILorg/apache/poi/hwmf/record/HwmfRecordType;ILorg/apache/poi/hwmf/draw/HwmfGraphics$FillDrawStyle;)V

    sput-object v1, Lorg/apache/poi/hwmf/record/HwmfDraw$WmfArc$WmfArcClosure;->PIE:Lorg/apache/poi/hwmf/record/HwmfDraw$WmfArc$WmfArcClosure;

    filled-new-array {v6, v0, v1}, [Lorg/apache/poi/hwmf/record/HwmfDraw$WmfArc$WmfArcClosure;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hwmf/record/HwmfDraw$WmfArc$WmfArcClosure;->$VALUES:[Lorg/apache/poi/hwmf/record/HwmfDraw$WmfArc$WmfArcClosure;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILorg/apache/poi/hwmf/record/HwmfRecordType;ILorg/apache/poi/hwmf/draw/HwmfGraphics$FillDrawStyle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/hwmf/record/HwmfRecordType;",
            "I",
            "Lorg/apache/poi/hwmf/draw/HwmfGraphics$FillDrawStyle;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lorg/apache/poi/hwmf/record/HwmfDraw$WmfArc$WmfArcClosure;->recordType:Lorg/apache/poi/hwmf/record/HwmfRecordType;

    iput p4, p0, Lorg/apache/poi/hwmf/record/HwmfDraw$WmfArc$WmfArcClosure;->awtType:I

    iput-object p5, p0, Lorg/apache/poi/hwmf/record/HwmfDraw$WmfArc$WmfArcClosure;->drawStyle:Lorg/apache/poi/hwmf/draw/HwmfGraphics$FillDrawStyle;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/hwmf/record/HwmfDraw$WmfArc$WmfArcClosure;
    .locals 1

    const-class v0, Lorg/apache/poi/hwmf/record/HwmfDraw$WmfArc$WmfArcClosure;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/hwmf/record/HwmfDraw$WmfArc$WmfArcClosure;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/hwmf/record/HwmfDraw$WmfArc$WmfArcClosure;
    .locals 1

    sget-object v0, Lorg/apache/poi/hwmf/record/HwmfDraw$WmfArc$WmfArcClosure;->$VALUES:[Lorg/apache/poi/hwmf/record/HwmfDraw$WmfArc$WmfArcClosure;

    invoke-virtual {v0}, [Lorg/apache/poi/hwmf/record/HwmfDraw$WmfArc$WmfArcClosure;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/hwmf/record/HwmfDraw$WmfArc$WmfArcClosure;

    return-object v0
.end method
