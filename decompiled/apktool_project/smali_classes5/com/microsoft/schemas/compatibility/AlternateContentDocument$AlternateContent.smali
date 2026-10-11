.class public interface abstract Lcom/microsoft/schemas/compatibility/AlternateContentDocument$AlternateContent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/schemas/compatibility/AlternateContentDocument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AlternateContent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/schemas/compatibility/AlternateContentDocument$AlternateContent$Fallback;,
        Lcom/microsoft/schemas/compatibility/AlternateContentDocument$AlternateContent$Choice;
    }
.end annotation


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/ElementFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/ElementFactory<",
            "Lcom/microsoft/schemas/compatibility/AlternateContentDocument$AlternateContent;",
            ">;"
        }
    .end annotation
.end field

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/ElementFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "alternatecontenta8a9elemtype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lcom/microsoft/schemas/compatibility/AlternateContentDocument$AlternateContent;->Factory:Lorg/apache/xmlbeans/impl/schema/ElementFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/compatibility/AlternateContentDocument$AlternateContent;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewChoice()Lcom/microsoft/schemas/compatibility/AlternateContentDocument$AlternateContent$Choice;
.end method

.method public abstract addNewFallback()Lcom/microsoft/schemas/compatibility/AlternateContentDocument$AlternateContent$Fallback;
.end method

.method public abstract getChoiceArray(I)Lcom/microsoft/schemas/compatibility/AlternateContentDocument$AlternateContent$Choice;
.end method

.method public abstract getChoiceArray()[Lcom/microsoft/schemas/compatibility/AlternateContentDocument$AlternateContent$Choice;
.end method

.method public abstract getChoiceList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/microsoft/schemas/compatibility/AlternateContentDocument$AlternateContent$Choice;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFallback()Lcom/microsoft/schemas/compatibility/AlternateContentDocument$AlternateContent$Fallback;
.end method

.method public abstract getIgnorable()Ljava/lang/String;
.end method

.method public abstract getMustUnderstand()Ljava/lang/String;
.end method

.method public abstract getProcessContent()Ljava/lang/String;
.end method

.method public abstract insertNewChoice(I)Lcom/microsoft/schemas/compatibility/AlternateContentDocument$AlternateContent$Choice;
.end method

.method public abstract isSetFallback()Z
.end method

.method public abstract isSetIgnorable()Z
.end method

.method public abstract isSetMustUnderstand()Z
.end method

.method public abstract isSetProcessContent()Z
.end method

.method public abstract removeChoice(I)V
.end method

.method public abstract setChoiceArray(ILcom/microsoft/schemas/compatibility/AlternateContentDocument$AlternateContent$Choice;)V
.end method

.method public abstract setChoiceArray([Lcom/microsoft/schemas/compatibility/AlternateContentDocument$AlternateContent$Choice;)V
.end method

.method public abstract setFallback(Lcom/microsoft/schemas/compatibility/AlternateContentDocument$AlternateContent$Fallback;)V
.end method

.method public abstract setIgnorable(Ljava/lang/String;)V
.end method

.method public abstract setMustUnderstand(Ljava/lang/String;)V
.end method

.method public abstract setProcessContent(Ljava/lang/String;)V
.end method

.method public abstract sizeOfChoiceArray()I
.end method

.method public abstract unsetFallback()V
.end method

.method public abstract unsetIgnorable()V
.end method

.method public abstract unsetMustUnderstand()V
.end method

.method public abstract unsetProcessContent()V
.end method

.method public abstract xgetIgnorable()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetMustUnderstand()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetProcessContent()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xsetIgnorable(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetMustUnderstand(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetProcessContent(Lorg/apache/xmlbeans/XmlString;)V
.end method
