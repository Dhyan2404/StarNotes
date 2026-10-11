.class public interface abstract Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLDiagramBuildType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlToken;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLDiagramBuildType$Enum;
    }
.end annotation


# static fields
.field public static final ALL_AT_ONCE:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLDiagramBuildType$Enum;

.field public static final BREADTH_BY_LVL:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLDiagramBuildType$Enum;

.field public static final BREADTH_BY_NODE:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLDiagramBuildType$Enum;

.field public static final CCW:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLDiagramBuildType$Enum;

.field public static final CCW_IN:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLDiagramBuildType$Enum;

.field public static final CCW_OUT:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLDiagramBuildType$Enum;

.field public static final CUST:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLDiagramBuildType$Enum;

.field public static final CW:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLDiagramBuildType$Enum;

.field public static final CW_IN:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLDiagramBuildType$Enum;

.field public static final CW_OUT:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLDiagramBuildType$Enum;

.field public static final DEPTH_BY_BRANCH:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLDiagramBuildType$Enum;

.field public static final DEPTH_BY_NODE:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLDiagramBuildType$Enum;

.field public static final DOWN:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLDiagramBuildType$Enum;

.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory<",
            "Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLDiagramBuildType;",
            ">;"
        }
    .end annotation
.end field

.field public static final INT_ALL_AT_ONCE:I = 0x10

.field public static final INT_BREADTH_BY_LVL:I = 0x5

.field public static final INT_BREADTH_BY_NODE:I = 0x4

.field public static final INT_CCW:I = 0x9

.field public static final INT_CCW_IN:I = 0xa

.field public static final INT_CCW_OUT:I = 0xb

.field public static final INT_CUST:I = 0x11

.field public static final INT_CW:I = 0x6

.field public static final INT_CW_IN:I = 0x7

.field public static final INT_CW_OUT:I = 0x8

.field public static final INT_DEPTH_BY_BRANCH:I = 0x3

.field public static final INT_DEPTH_BY_NODE:I = 0x2

.field public static final INT_DOWN:I = 0xf

.field public static final INT_IN_BY_RING:I = 0xc

.field public static final INT_OUT_BY_RING:I = 0xd

.field public static final INT_UP:I = 0xe

.field public static final INT_WHOLE:I = 0x1

.field public static final IN_BY_RING:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLDiagramBuildType$Enum;

.field public static final OUT_BY_RING:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLDiagramBuildType$Enum;

.field public static final UP:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLDiagramBuildType$Enum;

.field public static final WHOLE:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLDiagramBuildType$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "sttldiagrambuildtypeb208type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLDiagramBuildType;->Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLDiagramBuildType;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "whole"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLDiagramBuildType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLDiagramBuildType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLDiagramBuildType;->WHOLE:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLDiagramBuildType$Enum;

    const-string v0, "depthByNode"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLDiagramBuildType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLDiagramBuildType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLDiagramBuildType;->DEPTH_BY_NODE:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLDiagramBuildType$Enum;

    const-string v0, "depthByBranch"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLDiagramBuildType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLDiagramBuildType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLDiagramBuildType;->DEPTH_BY_BRANCH:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLDiagramBuildType$Enum;

    const-string v0, "breadthByNode"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLDiagramBuildType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLDiagramBuildType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLDiagramBuildType;->BREADTH_BY_NODE:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLDiagramBuildType$Enum;

    const-string v0, "breadthByLvl"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLDiagramBuildType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLDiagramBuildType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLDiagramBuildType;->BREADTH_BY_LVL:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLDiagramBuildType$Enum;

    const-string v0, "cw"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLDiagramBuildType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLDiagramBuildType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLDiagramBuildType;->CW:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLDiagramBuildType$Enum;

    const-string v0, "cwIn"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLDiagramBuildType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLDiagramBuildType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLDiagramBuildType;->CW_IN:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLDiagramBuildType$Enum;

    const-string v0, "cwOut"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLDiagramBuildType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLDiagramBuildType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLDiagramBuildType;->CW_OUT:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLDiagramBuildType$Enum;

    const-string v0, "ccw"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLDiagramBuildType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLDiagramBuildType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLDiagramBuildType;->CCW:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLDiagramBuildType$Enum;

    const-string v0, "ccwIn"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLDiagramBuildType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLDiagramBuildType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLDiagramBuildType;->CCW_IN:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLDiagramBuildType$Enum;

    const-string v0, "ccwOut"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLDiagramBuildType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLDiagramBuildType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLDiagramBuildType;->CCW_OUT:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLDiagramBuildType$Enum;

    const-string v0, "inByRing"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLDiagramBuildType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLDiagramBuildType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLDiagramBuildType;->IN_BY_RING:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLDiagramBuildType$Enum;

    const-string v0, "outByRing"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLDiagramBuildType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLDiagramBuildType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLDiagramBuildType;->OUT_BY_RING:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLDiagramBuildType$Enum;

    const-string v0, "up"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLDiagramBuildType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLDiagramBuildType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLDiagramBuildType;->UP:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLDiagramBuildType$Enum;

    const-string v0, "down"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLDiagramBuildType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLDiagramBuildType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLDiagramBuildType;->DOWN:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLDiagramBuildType$Enum;

    const-string v0, "allAtOnce"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLDiagramBuildType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLDiagramBuildType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLDiagramBuildType;->ALL_AT_ONCE:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLDiagramBuildType$Enum;

    const-string v0, "cust"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLDiagramBuildType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLDiagramBuildType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLDiagramBuildType;->CUST:Lorg/openxmlformats/schemas/presentationml/x2006/main/STTLDiagramBuildType$Enum;

    return-void
.end method


# virtual methods
.method public abstract getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
