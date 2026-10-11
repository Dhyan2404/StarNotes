.class public interface abstract Lorg/etsi/uri/x01903/v13/SPUserNoticeType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/etsi/uri/x01903/v13/SPUserNoticeType;",
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

    const-string v2, "spusernoticetypefd2etype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/etsi/uri/x01903/v13/SPUserNoticeType;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/etsi/uri/x01903/v13/SPUserNoticeType;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewNoticeRef()Lorg/etsi/uri/x01903/v13/NoticeReferenceType;
.end method

.method public abstract getExplicitText()Ljava/lang/String;
.end method

.method public abstract getNoticeRef()Lorg/etsi/uri/x01903/v13/NoticeReferenceType;
.end method

.method public abstract isSetExplicitText()Z
.end method

.method public abstract isSetNoticeRef()Z
.end method

.method public abstract setExplicitText(Ljava/lang/String;)V
.end method

.method public abstract setNoticeRef(Lorg/etsi/uri/x01903/v13/NoticeReferenceType;)V
.end method

.method public abstract unsetExplicitText()V
.end method

.method public abstract unsetNoticeRef()V
.end method

.method public abstract xgetExplicitText()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xsetExplicitText(Lorg/apache/xmlbeans/XmlString;)V
.end method
