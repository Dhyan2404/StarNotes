.class public interface abstract Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTextDirection;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlString;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTextDirection$Enum;
    }
.end annotation


# static fields
.field public static final BT_LR:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTextDirection$Enum;

.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTextDirection;",
            ">;"
        }
    .end annotation
.end field

.field public static final INT_BT_LR:I = 0x7

.field public static final INT_LR:I = 0x3

.field public static final INT_LR_TB:I = 0x8

.field public static final INT_LR_TB_V:I = 0x9

.field public static final INT_LR_V:I = 0x6

.field public static final INT_RL:I = 0x2

.field public static final INT_RL_V:I = 0x5

.field public static final INT_TB:I = 0x1

.field public static final INT_TB_LR_V:I = 0xa

.field public static final INT_TB_RL:I = 0xb

.field public static final INT_TB_RL_V:I = 0xc

.field public static final INT_TB_V:I = 0x4

.field public static final LR:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTextDirection$Enum;

.field public static final LR_TB:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTextDirection$Enum;

.field public static final LR_TB_V:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTextDirection$Enum;

.field public static final LR_V:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTextDirection$Enum;

.field public static final RL:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTextDirection$Enum;

.field public static final RL_V:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTextDirection$Enum;

.field public static final TB:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTextDirection$Enum;

.field public static final TB_LR_V:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTextDirection$Enum;

.field public static final TB_RL:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTextDirection$Enum;

.field public static final TB_RL_V:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTextDirection$Enum;

.field public static final TB_V:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTextDirection$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "sttextdirectionf150type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTextDirection;->Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTextDirection;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "tb"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTextDirection$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTextDirection$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTextDirection;->TB:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTextDirection$Enum;

    const-string v0, "rl"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTextDirection$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTextDirection$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTextDirection;->RL:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTextDirection$Enum;

    const-string v0, "lr"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTextDirection$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTextDirection$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTextDirection;->LR:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTextDirection$Enum;

    const-string v0, "tbV"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTextDirection$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTextDirection$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTextDirection;->TB_V:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTextDirection$Enum;

    const-string v0, "rlV"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTextDirection$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTextDirection$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTextDirection;->RL_V:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTextDirection$Enum;

    const-string v0, "lrV"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTextDirection$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTextDirection$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTextDirection;->LR_V:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTextDirection$Enum;

    const-string v0, "btLr"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTextDirection$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTextDirection$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTextDirection;->BT_LR:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTextDirection$Enum;

    const-string v0, "lrTb"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTextDirection$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTextDirection$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTextDirection;->LR_TB:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTextDirection$Enum;

    const-string v0, "lrTbV"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTextDirection$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTextDirection$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTextDirection;->LR_TB_V:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTextDirection$Enum;

    const-string v0, "tbLrV"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTextDirection$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTextDirection$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTextDirection;->TB_LR_V:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTextDirection$Enum;

    const-string v0, "tbRl"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTextDirection$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTextDirection$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTextDirection;->TB_RL:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTextDirection$Enum;

    const-string v0, "tbRlV"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTextDirection$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTextDirection$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTextDirection;->TB_RL_V:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTextDirection$Enum;

    return-void
.end method


# virtual methods
.method public abstract getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
