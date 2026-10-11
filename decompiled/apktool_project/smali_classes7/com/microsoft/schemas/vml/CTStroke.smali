.class public interface abstract Lcom/microsoft/schemas/vml/CTStroke;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lcom/microsoft/schemas/vml/CTStroke;",
            ">;"
        }
    .end annotation
.end field

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "ctstrokee2f6type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lcom/microsoft/schemas/vml/CTStroke;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/vml/CTStroke;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewBottom()Lcom/microsoft/schemas/office/office/CTStrokeChild;
.end method

.method public abstract addNewColumn()Lcom/microsoft/schemas/office/office/CTStrokeChild;
.end method

.method public abstract addNewLeft()Lcom/microsoft/schemas/office/office/CTStrokeChild;
.end method

.method public abstract addNewRight()Lcom/microsoft/schemas/office/office/CTStrokeChild;
.end method

.method public abstract addNewTop()Lcom/microsoft/schemas/office/office/CTStrokeChild;
.end method

.method public abstract getAlthref()Ljava/lang/String;
.end method

.method public abstract getBottom()Lcom/microsoft/schemas/office/office/CTStrokeChild;
.end method

.method public abstract getColor()Ljava/lang/String;
.end method

.method public abstract getColor2()Ljava/lang/String;
.end method

.method public abstract getColumn()Lcom/microsoft/schemas/office/office/CTStrokeChild;
.end method

.method public abstract getDashstyle()Ljava/lang/String;
.end method

.method public abstract getEndarrow()Lcom/microsoft/schemas/vml/STStrokeArrowType$Enum;
.end method

.method public abstract getEndarrowlength()Lcom/microsoft/schemas/vml/STStrokeArrowLength$Enum;
.end method

.method public abstract getEndarrowwidth()Lcom/microsoft/schemas/vml/STStrokeArrowWidth$Enum;
.end method

.method public abstract getEndcap()Lcom/microsoft/schemas/vml/STStrokeEndCap$Enum;
.end method

.method public abstract getFilltype()Lcom/microsoft/schemas/vml/STFillType$Enum;
.end method

.method public abstract getForcedash()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse$Enum;
.end method

.method public abstract getHref()Ljava/lang/String;
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getId2()Ljava/lang/String;
.end method

.method public abstract getImagealignshape()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse$Enum;
.end method

.method public abstract getImageaspect()Lcom/microsoft/schemas/vml/STImageAspect$Enum;
.end method

.method public abstract getImagesize()Ljava/lang/String;
.end method

.method public abstract getInsetpen()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse$Enum;
.end method

.method public abstract getJoinstyle()Lcom/microsoft/schemas/vml/STStrokeJoinStyle$Enum;
.end method

.method public abstract getLeft()Lcom/microsoft/schemas/office/office/CTStrokeChild;
.end method

.method public abstract getLinestyle()Lcom/microsoft/schemas/vml/STStrokeLineStyle$Enum;
.end method

.method public abstract getMiterlimit()Ljava/math/BigDecimal;
.end method

.method public abstract getOn()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse$Enum;
.end method

.method public abstract getOpacity()Ljava/lang/String;
.end method

.method public abstract getRelid()Ljava/lang/String;
.end method

.method public abstract getRight()Lcom/microsoft/schemas/office/office/CTStrokeChild;
.end method

.method public abstract getSrc()Ljava/lang/String;
.end method

.method public abstract getStartarrow()Lcom/microsoft/schemas/vml/STStrokeArrowType$Enum;
.end method

.method public abstract getStartarrowlength()Lcom/microsoft/schemas/vml/STStrokeArrowLength$Enum;
.end method

.method public abstract getStartarrowwidth()Lcom/microsoft/schemas/vml/STStrokeArrowWidth$Enum;
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public abstract getTop()Lcom/microsoft/schemas/office/office/CTStrokeChild;
.end method

.method public abstract getWeight()Ljava/lang/String;
.end method

.method public abstract isSetAlthref()Z
.end method

.method public abstract isSetBottom()Z
.end method

.method public abstract isSetColor()Z
.end method

.method public abstract isSetColor2()Z
.end method

.method public abstract isSetColumn()Z
.end method

.method public abstract isSetDashstyle()Z
.end method

.method public abstract isSetEndarrow()Z
.end method

.method public abstract isSetEndarrowlength()Z
.end method

.method public abstract isSetEndarrowwidth()Z
.end method

.method public abstract isSetEndcap()Z
.end method

.method public abstract isSetFilltype()Z
.end method

.method public abstract isSetForcedash()Z
.end method

.method public abstract isSetHref()Z
.end method

.method public abstract isSetId()Z
.end method

.method public abstract isSetId2()Z
.end method

.method public abstract isSetImagealignshape()Z
.end method

.method public abstract isSetImageaspect()Z
.end method

.method public abstract isSetImagesize()Z
.end method

.method public abstract isSetInsetpen()Z
.end method

.method public abstract isSetJoinstyle()Z
.end method

.method public abstract isSetLeft()Z
.end method

.method public abstract isSetLinestyle()Z
.end method

.method public abstract isSetMiterlimit()Z
.end method

.method public abstract isSetOn()Z
.end method

.method public abstract isSetOpacity()Z
.end method

.method public abstract isSetRelid()Z
.end method

.method public abstract isSetRight()Z
.end method

.method public abstract isSetSrc()Z
.end method

.method public abstract isSetStartarrow()Z
.end method

.method public abstract isSetStartarrowlength()Z
.end method

.method public abstract isSetStartarrowwidth()Z
.end method

.method public abstract isSetTitle()Z
.end method

.method public abstract isSetTop()Z
.end method

.method public abstract isSetWeight()Z
.end method

.method public abstract setAlthref(Ljava/lang/String;)V
.end method

.method public abstract setBottom(Lcom/microsoft/schemas/office/office/CTStrokeChild;)V
.end method

.method public abstract setColor(Ljava/lang/String;)V
.end method

.method public abstract setColor2(Ljava/lang/String;)V
.end method

.method public abstract setColumn(Lcom/microsoft/schemas/office/office/CTStrokeChild;)V
.end method

.method public abstract setDashstyle(Ljava/lang/String;)V
.end method

.method public abstract setEndarrow(Lcom/microsoft/schemas/vml/STStrokeArrowType$Enum;)V
.end method

.method public abstract setEndarrowlength(Lcom/microsoft/schemas/vml/STStrokeArrowLength$Enum;)V
.end method

.method public abstract setEndarrowwidth(Lcom/microsoft/schemas/vml/STStrokeArrowWidth$Enum;)V
.end method

.method public abstract setEndcap(Lcom/microsoft/schemas/vml/STStrokeEndCap$Enum;)V
.end method

.method public abstract setFilltype(Lcom/microsoft/schemas/vml/STFillType$Enum;)V
.end method

.method public abstract setForcedash(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse$Enum;)V
.end method

.method public abstract setHref(Ljava/lang/String;)V
.end method

.method public abstract setId(Ljava/lang/String;)V
.end method

.method public abstract setId2(Ljava/lang/String;)V
.end method

.method public abstract setImagealignshape(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse$Enum;)V
.end method

.method public abstract setImageaspect(Lcom/microsoft/schemas/vml/STImageAspect$Enum;)V
.end method

.method public abstract setImagesize(Ljava/lang/String;)V
.end method

.method public abstract setInsetpen(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse$Enum;)V
.end method

.method public abstract setJoinstyle(Lcom/microsoft/schemas/vml/STStrokeJoinStyle$Enum;)V
.end method

.method public abstract setLeft(Lcom/microsoft/schemas/office/office/CTStrokeChild;)V
.end method

.method public abstract setLinestyle(Lcom/microsoft/schemas/vml/STStrokeLineStyle$Enum;)V
.end method

.method public abstract setMiterlimit(Ljava/math/BigDecimal;)V
.end method

.method public abstract setOn(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse$Enum;)V
.end method

.method public abstract setOpacity(Ljava/lang/String;)V
.end method

.method public abstract setRelid(Ljava/lang/String;)V
.end method

.method public abstract setRight(Lcom/microsoft/schemas/office/office/CTStrokeChild;)V
.end method

.method public abstract setSrc(Ljava/lang/String;)V
.end method

.method public abstract setStartarrow(Lcom/microsoft/schemas/vml/STStrokeArrowType$Enum;)V
.end method

.method public abstract setStartarrowlength(Lcom/microsoft/schemas/vml/STStrokeArrowLength$Enum;)V
.end method

.method public abstract setStartarrowwidth(Lcom/microsoft/schemas/vml/STStrokeArrowWidth$Enum;)V
.end method

.method public abstract setTitle(Ljava/lang/String;)V
.end method

.method public abstract setTop(Lcom/microsoft/schemas/office/office/CTStrokeChild;)V
.end method

.method public abstract setWeight(Ljava/lang/String;)V
.end method

.method public abstract unsetAlthref()V
.end method

.method public abstract unsetBottom()V
.end method

.method public abstract unsetColor()V
.end method

.method public abstract unsetColor2()V
.end method

.method public abstract unsetColumn()V
.end method

.method public abstract unsetDashstyle()V
.end method

.method public abstract unsetEndarrow()V
.end method

.method public abstract unsetEndarrowlength()V
.end method

.method public abstract unsetEndarrowwidth()V
.end method

.method public abstract unsetEndcap()V
.end method

.method public abstract unsetFilltype()V
.end method

.method public abstract unsetForcedash()V
.end method

.method public abstract unsetHref()V
.end method

.method public abstract unsetId()V
.end method

.method public abstract unsetId2()V
.end method

.method public abstract unsetImagealignshape()V
.end method

.method public abstract unsetImageaspect()V
.end method

.method public abstract unsetImagesize()V
.end method

.method public abstract unsetInsetpen()V
.end method

.method public abstract unsetJoinstyle()V
.end method

.method public abstract unsetLeft()V
.end method

.method public abstract unsetLinestyle()V
.end method

.method public abstract unsetMiterlimit()V
.end method

.method public abstract unsetOn()V
.end method

.method public abstract unsetOpacity()V
.end method

.method public abstract unsetRelid()V
.end method

.method public abstract unsetRight()V
.end method

.method public abstract unsetSrc()V
.end method

.method public abstract unsetStartarrow()V
.end method

.method public abstract unsetStartarrowlength()V
.end method

.method public abstract unsetStartarrowwidth()V
.end method

.method public abstract unsetTitle()V
.end method

.method public abstract unsetTop()V
.end method

.method public abstract unsetWeight()V
.end method

.method public abstract xgetAlthref()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetColor()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STColorType;
.end method

.method public abstract xgetColor2()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STColorType;
.end method

.method public abstract xgetDashstyle()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetEndarrow()Lcom/microsoft/schemas/vml/STStrokeArrowType;
.end method

.method public abstract xgetEndarrowlength()Lcom/microsoft/schemas/vml/STStrokeArrowLength;
.end method

.method public abstract xgetEndarrowwidth()Lcom/microsoft/schemas/vml/STStrokeArrowWidth;
.end method

.method public abstract xgetEndcap()Lcom/microsoft/schemas/vml/STStrokeEndCap;
.end method

.method public abstract xgetFilltype()Lcom/microsoft/schemas/vml/STFillType;
.end method

.method public abstract xgetForcedash()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse;
.end method

.method public abstract xgetHref()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetId()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetId2()Lorg/openxmlformats/schemas/officeDocument/x2006/relationships/STRelationshipId;
.end method

.method public abstract xgetImagealignshape()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse;
.end method

.method public abstract xgetImageaspect()Lcom/microsoft/schemas/vml/STImageAspect;
.end method

.method public abstract xgetImagesize()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetInsetpen()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse;
.end method

.method public abstract xgetJoinstyle()Lcom/microsoft/schemas/vml/STStrokeJoinStyle;
.end method

.method public abstract xgetLinestyle()Lcom/microsoft/schemas/vml/STStrokeLineStyle;
.end method

.method public abstract xgetMiterlimit()Lorg/apache/xmlbeans/XmlDecimal;
.end method

.method public abstract xgetOn()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse;
.end method

.method public abstract xgetOpacity()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetRelid()Lorg/openxmlformats/schemas/officeDocument/x2006/relationships/STRelationshipId;
.end method

.method public abstract xgetSrc()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetStartarrow()Lcom/microsoft/schemas/vml/STStrokeArrowType;
.end method

.method public abstract xgetStartarrowlength()Lcom/microsoft/schemas/vml/STStrokeArrowLength;
.end method

.method public abstract xgetStartarrowwidth()Lcom/microsoft/schemas/vml/STStrokeArrowWidth;
.end method

.method public abstract xgetTitle()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetWeight()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xsetAlthref(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetColor(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STColorType;)V
.end method

.method public abstract xsetColor2(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STColorType;)V
.end method

.method public abstract xsetDashstyle(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetEndarrow(Lcom/microsoft/schemas/vml/STStrokeArrowType;)V
.end method

.method public abstract xsetEndarrowlength(Lcom/microsoft/schemas/vml/STStrokeArrowLength;)V
.end method

.method public abstract xsetEndarrowwidth(Lcom/microsoft/schemas/vml/STStrokeArrowWidth;)V
.end method

.method public abstract xsetEndcap(Lcom/microsoft/schemas/vml/STStrokeEndCap;)V
.end method

.method public abstract xsetFilltype(Lcom/microsoft/schemas/vml/STFillType;)V
.end method

.method public abstract xsetForcedash(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse;)V
.end method

.method public abstract xsetHref(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetId(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetId2(Lorg/openxmlformats/schemas/officeDocument/x2006/relationships/STRelationshipId;)V
.end method

.method public abstract xsetImagealignshape(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse;)V
.end method

.method public abstract xsetImageaspect(Lcom/microsoft/schemas/vml/STImageAspect;)V
.end method

.method public abstract xsetImagesize(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetInsetpen(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse;)V
.end method

.method public abstract xsetJoinstyle(Lcom/microsoft/schemas/vml/STStrokeJoinStyle;)V
.end method

.method public abstract xsetLinestyle(Lcom/microsoft/schemas/vml/STStrokeLineStyle;)V
.end method

.method public abstract xsetMiterlimit(Lorg/apache/xmlbeans/XmlDecimal;)V
.end method

.method public abstract xsetOn(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse;)V
.end method

.method public abstract xsetOpacity(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetRelid(Lorg/openxmlformats/schemas/officeDocument/x2006/relationships/STRelationshipId;)V
.end method

.method public abstract xsetSrc(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetStartarrow(Lcom/microsoft/schemas/vml/STStrokeArrowType;)V
.end method

.method public abstract xsetStartarrowlength(Lcom/microsoft/schemas/vml/STStrokeArrowLength;)V
.end method

.method public abstract xsetStartarrowwidth(Lcom/microsoft/schemas/vml/STStrokeArrowWidth;)V
.end method

.method public abstract xsetTitle(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetWeight(Lorg/apache/xmlbeans/XmlString;)V
.end method
