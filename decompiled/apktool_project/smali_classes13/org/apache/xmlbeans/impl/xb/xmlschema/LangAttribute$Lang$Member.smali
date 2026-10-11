.class public interface abstract Lorg/apache/xmlbeans/impl/xb/xmlschema/LangAttribute$Lang$Member;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlString;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlbeans/impl/xb/xmlschema/LangAttribute$Lang;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Member"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xmlbeans/impl/xb/xmlschema/LangAttribute$Lang$Member$Enum;
    }
.end annotation


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/ElementFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/ElementFactory<",
            "Lorg/apache/xmlbeans/impl/xb/xmlschema/LangAttribute$Lang$Member;",
            ">;"
        }
    .end annotation
.end field

.field public static final INT_X:I = 0x1

.field public static final X:Lorg/apache/xmlbeans/impl/xb/xmlschema/LangAttribute$Lang$Member$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/ElementFactory;

    sget-object v1, Lorg/apache/xmlbeans/metadata/system/sXMLLANG/TypeSystemHolder;->typeSystem:Lorg/apache/xmlbeans/metadata/system/sXMLLANG/TypeSystemHolder;

    const-string v2, "anon695ftype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/xmlbeans/impl/xb/xmlschema/LangAttribute$Lang$Member;->Factory:Lorg/apache/xmlbeans/impl/schema/ElementFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/impl/xb/xmlschema/LangAttribute$Lang$Member;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, ""

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/xb/xmlschema/LangAttribute$Lang$Member$Enum;->forString(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/xb/xmlschema/LangAttribute$Lang$Member$Enum;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/impl/xb/xmlschema/LangAttribute$Lang$Member;->X:Lorg/apache/xmlbeans/impl/xb/xmlschema/LangAttribute$Lang$Member$Enum;

    return-void
.end method


# virtual methods
.method public abstract getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
