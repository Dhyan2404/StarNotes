.class public final Lcom/sun/org/apache/xalan/internal/xsltc/trax/OutputSettings;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private _cdata_section_elements:Ljava/lang/String;

.field private _doctype_public:Ljava/lang/String;

.field private _encoding:Ljava/lang/String;

.field private _indent:Ljava/lang/String;

.field private _media_type:Ljava/lang/String;

.field private _method:Ljava/lang/String;

.field private _omit_xml_declaration:Ljava/lang/String;

.field private _standalone:Ljava/lang/String;

.field private _version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/OutputSettings;->_cdata_section_elements:Ljava/lang/String;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/OutputSettings;->_doctype_public:Ljava/lang/String;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/OutputSettings;->_encoding:Ljava/lang/String;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/OutputSettings;->_indent:Ljava/lang/String;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/OutputSettings;->_media_type:Ljava/lang/String;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/OutputSettings;->_method:Ljava/lang/String;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/OutputSettings;->_omit_xml_declaration:Ljava/lang/String;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/OutputSettings;->_standalone:Ljava/lang/String;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/OutputSettings;->_version:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getProperties()Ljava/util/Properties;
    .locals 0

    new-instance p0, Ljava/util/Properties;

    invoke-direct {p0}, Ljava/util/Properties;-><init>()V

    return-object p0
.end method
