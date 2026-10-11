.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRevisionCustomView;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRevisionCustomView;",
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

    const-string v2, "ctrevisioncustomview9d3atype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRevisionCustomView;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRevisionCustomView;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract getAction()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STRevisionAction$Enum;
.end method

.method public abstract getGuid()Ljava/lang/String;
.end method

.method public abstract setAction(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STRevisionAction$Enum;)V
.end method

.method public abstract setGuid(Ljava/lang/String;)V
.end method

.method public abstract xgetAction()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STRevisionAction;
.end method

.method public abstract xgetGuid()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STGuid;
.end method

.method public abstract xsetAction(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STRevisionAction;)V
.end method

.method public abstract xsetGuid(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STGuid;)V
.end method
