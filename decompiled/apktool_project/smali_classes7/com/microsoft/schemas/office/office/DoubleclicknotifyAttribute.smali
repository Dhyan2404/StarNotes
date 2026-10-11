.class public interface abstract Lcom/microsoft/schemas/office/office/DoubleclicknotifyAttribute;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lcom/microsoft/schemas/office/office/DoubleclicknotifyAttribute;",
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

    const-string v2, "doubleclicknotifycc53attrtypetype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lcom/microsoft/schemas/office/office/DoubleclicknotifyAttribute;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/office/DoubleclicknotifyAttribute;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract getDoubleclicknotify()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse$Enum;
.end method

.method public abstract isSetDoubleclicknotify()Z
.end method

.method public abstract setDoubleclicknotify(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse$Enum;)V
.end method

.method public abstract unsetDoubleclicknotify()V
.end method

.method public abstract xgetDoubleclicknotify()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse;
.end method

.method public abstract xsetDoubleclicknotify(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse;)V
.end method
