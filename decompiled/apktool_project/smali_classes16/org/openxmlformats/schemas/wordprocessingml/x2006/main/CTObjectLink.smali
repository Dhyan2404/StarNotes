.class public interface abstract Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTObjectLink;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTObjectEmbed;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTObjectLink;",
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

    const-string v2, "ctobjectlinkabeftype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTObjectLink;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTObjectLink;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract getLockedField()Ljava/lang/Object;
.end method

.method public abstract getUpdateMode()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STObjectUpdateMode$Enum;
.end method

.method public abstract isSetLockedField()Z
.end method

.method public abstract setLockedField(Ljava/lang/Object;)V
.end method

.method public abstract setUpdateMode(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STObjectUpdateMode$Enum;)V
.end method

.method public abstract unsetLockedField()V
.end method

.method public abstract xgetLockedField()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff;
.end method

.method public abstract xgetUpdateMode()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STObjectUpdateMode;
.end method

.method public abstract xsetLockedField(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff;)V
.end method

.method public abstract xsetUpdateMode(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STObjectUpdateMode;)V
.end method
