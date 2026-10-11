.class public Lorg/apache/wml/dom/WMLDocumentImpl;
.super Lorg/apache/xerces/dom/DocumentImpl;
.source "SourceFile"

# interfaces
.implements Lorg/apache/wml/WMLDocument;


# static fields
.field private static final _elemClassSigWML:[Ljava/lang/Class;

.field private static _elementTypesWML:Ljava/util/Hashtable; = null

.field static synthetic class$java$lang$String:Ljava/lang/Class; = null

.field static synthetic class$org$apache$wml$dom$WMLAElementImpl:Ljava/lang/Class; = null

.field static synthetic class$org$apache$wml$dom$WMLAccessElementImpl:Ljava/lang/Class; = null

.field static synthetic class$org$apache$wml$dom$WMLAnchorElementImpl:Ljava/lang/Class; = null

.field static synthetic class$org$apache$wml$dom$WMLBElementImpl:Ljava/lang/Class; = null

.field static synthetic class$org$apache$wml$dom$WMLBigElementImpl:Ljava/lang/Class; = null

.field static synthetic class$org$apache$wml$dom$WMLBrElementImpl:Ljava/lang/Class; = null

.field static synthetic class$org$apache$wml$dom$WMLCardElementImpl:Ljava/lang/Class; = null

.field static synthetic class$org$apache$wml$dom$WMLDoElementImpl:Ljava/lang/Class; = null

.field static synthetic class$org$apache$wml$dom$WMLDocumentImpl:Ljava/lang/Class; = null

.field static synthetic class$org$apache$wml$dom$WMLEmElementImpl:Ljava/lang/Class; = null

.field static synthetic class$org$apache$wml$dom$WMLFieldsetElementImpl:Ljava/lang/Class; = null

.field static synthetic class$org$apache$wml$dom$WMLGoElementImpl:Ljava/lang/Class; = null

.field static synthetic class$org$apache$wml$dom$WMLHeadElementImpl:Ljava/lang/Class; = null

.field static synthetic class$org$apache$wml$dom$WMLIElementImpl:Ljava/lang/Class; = null

.field static synthetic class$org$apache$wml$dom$WMLImgElementImpl:Ljava/lang/Class; = null

.field static synthetic class$org$apache$wml$dom$WMLInputElementImpl:Ljava/lang/Class; = null

.field static synthetic class$org$apache$wml$dom$WMLMetaElementImpl:Ljava/lang/Class; = null

.field static synthetic class$org$apache$wml$dom$WMLNoopElementImpl:Ljava/lang/Class; = null

.field static synthetic class$org$apache$wml$dom$WMLOneventElementImpl:Ljava/lang/Class; = null

.field static synthetic class$org$apache$wml$dom$WMLOptgroupElementImpl:Ljava/lang/Class; = null

.field static synthetic class$org$apache$wml$dom$WMLOptionElementImpl:Ljava/lang/Class; = null

.field static synthetic class$org$apache$wml$dom$WMLPElementImpl:Ljava/lang/Class; = null

.field static synthetic class$org$apache$wml$dom$WMLPostfieldElementImpl:Ljava/lang/Class; = null

.field static synthetic class$org$apache$wml$dom$WMLPrevElementImpl:Ljava/lang/Class; = null

.field static synthetic class$org$apache$wml$dom$WMLRefreshElementImpl:Ljava/lang/Class; = null

.field static synthetic class$org$apache$wml$dom$WMLSelectElementImpl:Ljava/lang/Class; = null

.field static synthetic class$org$apache$wml$dom$WMLSetvarElementImpl:Ljava/lang/Class; = null

.field static synthetic class$org$apache$wml$dom$WMLSmallElementImpl:Ljava/lang/Class; = null

.field static synthetic class$org$apache$wml$dom$WMLStrongElementImpl:Ljava/lang/Class; = null

.field static synthetic class$org$apache$wml$dom$WMLTableElementImpl:Ljava/lang/Class; = null

.field static synthetic class$org$apache$wml$dom$WMLTdElementImpl:Ljava/lang/Class; = null

.field static synthetic class$org$apache$wml$dom$WMLTemplateElementImpl:Ljava/lang/Class; = null

.field static synthetic class$org$apache$wml$dom$WMLTimerElementImpl:Ljava/lang/Class; = null

.field static synthetic class$org$apache$wml$dom$WMLTrElementImpl:Ljava/lang/Class; = null

.field static synthetic class$org$apache$wml$dom$WMLUElementImpl:Ljava/lang/Class; = null

.field static synthetic class$org$apache$wml$dom$WMLWmlElementImpl:Ljava/lang/Class; = null

.field private static final serialVersionUID:J = -0x5b5b2d153961c668L


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    sget-object v1, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLDocumentImpl:Ljava/lang/Class;

    if-nez v1, :cond_0

    const-string v1, "org.apache.wml.dom.WMLDocumentImpl"

    invoke-static {v1}, Lorg/apache/wml/dom/WMLDocumentImpl;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLDocumentImpl:Ljava/lang/Class;

    :cond_0
    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/wml/dom/WMLDocumentImpl;->class$java$lang$String:Ljava/lang/Class;

    if-nez v1, :cond_1

    const-string v1, "java.lang.String"

    invoke-static {v1}, Lorg/apache/wml/dom/WMLDocumentImpl;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/wml/dom/WMLDocumentImpl;->class$java$lang$String:Ljava/lang/Class;

    :cond_1
    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lorg/apache/wml/dom/WMLDocumentImpl;->_elemClassSigWML:[Ljava/lang/Class;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/apache/wml/dom/WMLDocumentImpl;->_elementTypesWML:Ljava/util/Hashtable;

    sget-object v1, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLBElementImpl:Ljava/lang/Class;

    if-nez v1, :cond_2

    const-string v1, "org.apache.wml.dom.WMLBElementImpl"

    invoke-static {v1}, Lorg/apache/wml/dom/WMLDocumentImpl;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLBElementImpl:Ljava/lang/Class;

    :cond_2
    const-string v2, "b"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/wml/dom/WMLDocumentImpl;->_elementTypesWML:Ljava/util/Hashtable;

    sget-object v1, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLNoopElementImpl:Ljava/lang/Class;

    if-nez v1, :cond_3

    const-string v1, "org.apache.wml.dom.WMLNoopElementImpl"

    invoke-static {v1}, Lorg/apache/wml/dom/WMLDocumentImpl;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLNoopElementImpl:Ljava/lang/Class;

    :cond_3
    const-string v2, "noop"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/wml/dom/WMLDocumentImpl;->_elementTypesWML:Ljava/util/Hashtable;

    sget-object v1, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLAElementImpl:Ljava/lang/Class;

    if-nez v1, :cond_4

    const-string v1, "org.apache.wml.dom.WMLAElementImpl"

    invoke-static {v1}, Lorg/apache/wml/dom/WMLDocumentImpl;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLAElementImpl:Ljava/lang/Class;

    :cond_4
    const-string v2, "a"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/wml/dom/WMLDocumentImpl;->_elementTypesWML:Ljava/util/Hashtable;

    sget-object v1, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLSetvarElementImpl:Ljava/lang/Class;

    if-nez v1, :cond_5

    const-string v1, "org.apache.wml.dom.WMLSetvarElementImpl"

    invoke-static {v1}, Lorg/apache/wml/dom/WMLDocumentImpl;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLSetvarElementImpl:Ljava/lang/Class;

    :cond_5
    const-string v2, "setvar"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/wml/dom/WMLDocumentImpl;->_elementTypesWML:Ljava/util/Hashtable;

    sget-object v1, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLAccessElementImpl:Ljava/lang/Class;

    if-nez v1, :cond_6

    const-string v1, "org.apache.wml.dom.WMLAccessElementImpl"

    invoke-static {v1}, Lorg/apache/wml/dom/WMLDocumentImpl;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLAccessElementImpl:Ljava/lang/Class;

    :cond_6
    const-string v2, "access"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/wml/dom/WMLDocumentImpl;->_elementTypesWML:Ljava/util/Hashtable;

    sget-object v1, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLStrongElementImpl:Ljava/lang/Class;

    if-nez v1, :cond_7

    const-string v1, "org.apache.wml.dom.WMLStrongElementImpl"

    invoke-static {v1}, Lorg/apache/wml/dom/WMLDocumentImpl;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLStrongElementImpl:Ljava/lang/Class;

    :cond_7
    const-string v2, "strong"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/wml/dom/WMLDocumentImpl;->_elementTypesWML:Ljava/util/Hashtable;

    sget-object v1, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLPostfieldElementImpl:Ljava/lang/Class;

    if-nez v1, :cond_8

    const-string v1, "org.apache.wml.dom.WMLPostfieldElementImpl"

    invoke-static {v1}, Lorg/apache/wml/dom/WMLDocumentImpl;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLPostfieldElementImpl:Ljava/lang/Class;

    :cond_8
    const-string v2, "postfield"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/wml/dom/WMLDocumentImpl;->_elementTypesWML:Ljava/util/Hashtable;

    sget-object v1, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLDoElementImpl:Ljava/lang/Class;

    if-nez v1, :cond_9

    const-string v1, "org.apache.wml.dom.WMLDoElementImpl"

    invoke-static {v1}, Lorg/apache/wml/dom/WMLDocumentImpl;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLDoElementImpl:Ljava/lang/Class;

    :cond_9
    const-string v2, "do"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/wml/dom/WMLDocumentImpl;->_elementTypesWML:Ljava/util/Hashtable;

    sget-object v1, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLWmlElementImpl:Ljava/lang/Class;

    if-nez v1, :cond_a

    const-string v1, "org.apache.wml.dom.WMLWmlElementImpl"

    invoke-static {v1}, Lorg/apache/wml/dom/WMLDocumentImpl;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLWmlElementImpl:Ljava/lang/Class;

    :cond_a
    const-string v2, "wml"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/wml/dom/WMLDocumentImpl;->_elementTypesWML:Ljava/util/Hashtable;

    sget-object v1, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLTrElementImpl:Ljava/lang/Class;

    if-nez v1, :cond_b

    const-string v1, "org.apache.wml.dom.WMLTrElementImpl"

    invoke-static {v1}, Lorg/apache/wml/dom/WMLDocumentImpl;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLTrElementImpl:Ljava/lang/Class;

    :cond_b
    const-string v2, "tr"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/wml/dom/WMLDocumentImpl;->_elementTypesWML:Ljava/util/Hashtable;

    sget-object v1, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLGoElementImpl:Ljava/lang/Class;

    if-nez v1, :cond_c

    const-string v1, "org.apache.wml.dom.WMLGoElementImpl"

    invoke-static {v1}, Lorg/apache/wml/dom/WMLDocumentImpl;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLGoElementImpl:Ljava/lang/Class;

    :cond_c
    const-string v2, "go"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/wml/dom/WMLDocumentImpl;->_elementTypesWML:Ljava/util/Hashtable;

    sget-object v1, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLBigElementImpl:Ljava/lang/Class;

    if-nez v1, :cond_d

    const-string v1, "org.apache.wml.dom.WMLBigElementImpl"

    invoke-static {v1}, Lorg/apache/wml/dom/WMLDocumentImpl;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLBigElementImpl:Ljava/lang/Class;

    :cond_d
    const-string v2, "big"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/wml/dom/WMLDocumentImpl;->_elementTypesWML:Ljava/util/Hashtable;

    sget-object v1, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLAnchorElementImpl:Ljava/lang/Class;

    if-nez v1, :cond_e

    const-string v1, "org.apache.wml.dom.WMLAnchorElementImpl"

    invoke-static {v1}, Lorg/apache/wml/dom/WMLDocumentImpl;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLAnchorElementImpl:Ljava/lang/Class;

    :cond_e
    const-string v2, "anchor"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/wml/dom/WMLDocumentImpl;->_elementTypesWML:Ljava/util/Hashtable;

    sget-object v1, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLTimerElementImpl:Ljava/lang/Class;

    if-nez v1, :cond_f

    const-string v1, "org.apache.wml.dom.WMLTimerElementImpl"

    invoke-static {v1}, Lorg/apache/wml/dom/WMLDocumentImpl;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLTimerElementImpl:Ljava/lang/Class;

    :cond_f
    const-string v2, "timer"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/wml/dom/WMLDocumentImpl;->_elementTypesWML:Ljava/util/Hashtable;

    sget-object v1, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLSmallElementImpl:Ljava/lang/Class;

    if-nez v1, :cond_10

    const-string v1, "org.apache.wml.dom.WMLSmallElementImpl"

    invoke-static {v1}, Lorg/apache/wml/dom/WMLDocumentImpl;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLSmallElementImpl:Ljava/lang/Class;

    :cond_10
    const-string v2, "small"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/wml/dom/WMLDocumentImpl;->_elementTypesWML:Ljava/util/Hashtable;

    sget-object v1, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLOptgroupElementImpl:Ljava/lang/Class;

    if-nez v1, :cond_11

    const-string v1, "org.apache.wml.dom.WMLOptgroupElementImpl"

    invoke-static {v1}, Lorg/apache/wml/dom/WMLDocumentImpl;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLOptgroupElementImpl:Ljava/lang/Class;

    :cond_11
    const-string v2, "optgroup"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/wml/dom/WMLDocumentImpl;->_elementTypesWML:Ljava/util/Hashtable;

    sget-object v1, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLHeadElementImpl:Ljava/lang/Class;

    if-nez v1, :cond_12

    const-string v1, "org.apache.wml.dom.WMLHeadElementImpl"

    invoke-static {v1}, Lorg/apache/wml/dom/WMLDocumentImpl;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLHeadElementImpl:Ljava/lang/Class;

    :cond_12
    const-string v2, "head"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/wml/dom/WMLDocumentImpl;->_elementTypesWML:Ljava/util/Hashtable;

    sget-object v1, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLTdElementImpl:Ljava/lang/Class;

    if-nez v1, :cond_13

    const-string v1, "org.apache.wml.dom.WMLTdElementImpl"

    invoke-static {v1}, Lorg/apache/wml/dom/WMLDocumentImpl;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLTdElementImpl:Ljava/lang/Class;

    :cond_13
    const-string v2, "td"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/wml/dom/WMLDocumentImpl;->_elementTypesWML:Ljava/util/Hashtable;

    sget-object v1, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLFieldsetElementImpl:Ljava/lang/Class;

    if-nez v1, :cond_14

    const-string v1, "org.apache.wml.dom.WMLFieldsetElementImpl"

    invoke-static {v1}, Lorg/apache/wml/dom/WMLDocumentImpl;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLFieldsetElementImpl:Ljava/lang/Class;

    :cond_14
    const-string v2, "fieldset"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/wml/dom/WMLDocumentImpl;->_elementTypesWML:Ljava/util/Hashtable;

    sget-object v1, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLImgElementImpl:Ljava/lang/Class;

    if-nez v1, :cond_15

    const-string v1, "org.apache.wml.dom.WMLImgElementImpl"

    invoke-static {v1}, Lorg/apache/wml/dom/WMLDocumentImpl;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLImgElementImpl:Ljava/lang/Class;

    :cond_15
    const-string v2, "img"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/wml/dom/WMLDocumentImpl;->_elementTypesWML:Ljava/util/Hashtable;

    sget-object v1, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLRefreshElementImpl:Ljava/lang/Class;

    if-nez v1, :cond_16

    const-string v1, "org.apache.wml.dom.WMLRefreshElementImpl"

    invoke-static {v1}, Lorg/apache/wml/dom/WMLDocumentImpl;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLRefreshElementImpl:Ljava/lang/Class;

    :cond_16
    const-string v2, "refresh"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/wml/dom/WMLDocumentImpl;->_elementTypesWML:Ljava/util/Hashtable;

    sget-object v1, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLOneventElementImpl:Ljava/lang/Class;

    if-nez v1, :cond_17

    const-string v1, "org.apache.wml.dom.WMLOneventElementImpl"

    invoke-static {v1}, Lorg/apache/wml/dom/WMLDocumentImpl;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLOneventElementImpl:Ljava/lang/Class;

    :cond_17
    const-string v2, "onevent"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/wml/dom/WMLDocumentImpl;->_elementTypesWML:Ljava/util/Hashtable;

    sget-object v1, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLInputElementImpl:Ljava/lang/Class;

    if-nez v1, :cond_18

    const-string v1, "org.apache.wml.dom.WMLInputElementImpl"

    invoke-static {v1}, Lorg/apache/wml/dom/WMLDocumentImpl;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLInputElementImpl:Ljava/lang/Class;

    :cond_18
    const-string v2, "input"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/wml/dom/WMLDocumentImpl;->_elementTypesWML:Ljava/util/Hashtable;

    sget-object v1, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLPrevElementImpl:Ljava/lang/Class;

    if-nez v1, :cond_19

    const-string v1, "org.apache.wml.dom.WMLPrevElementImpl"

    invoke-static {v1}, Lorg/apache/wml/dom/WMLDocumentImpl;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLPrevElementImpl:Ljava/lang/Class;

    :cond_19
    const-string v2, "prev"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/wml/dom/WMLDocumentImpl;->_elementTypesWML:Ljava/util/Hashtable;

    sget-object v1, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLTableElementImpl:Ljava/lang/Class;

    if-nez v1, :cond_1a

    const-string v1, "org.apache.wml.dom.WMLTableElementImpl"

    invoke-static {v1}, Lorg/apache/wml/dom/WMLDocumentImpl;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLTableElementImpl:Ljava/lang/Class;

    :cond_1a
    const-string v2, "table"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/wml/dom/WMLDocumentImpl;->_elementTypesWML:Ljava/util/Hashtable;

    sget-object v1, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLMetaElementImpl:Ljava/lang/Class;

    if-nez v1, :cond_1b

    const-string v1, "org.apache.wml.dom.WMLMetaElementImpl"

    invoke-static {v1}, Lorg/apache/wml/dom/WMLDocumentImpl;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLMetaElementImpl:Ljava/lang/Class;

    :cond_1b
    const-string v2, "meta"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/wml/dom/WMLDocumentImpl;->_elementTypesWML:Ljava/util/Hashtable;

    sget-object v1, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLTemplateElementImpl:Ljava/lang/Class;

    if-nez v1, :cond_1c

    const-string v1, "org.apache.wml.dom.WMLTemplateElementImpl"

    invoke-static {v1}, Lorg/apache/wml/dom/WMLDocumentImpl;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLTemplateElementImpl:Ljava/lang/Class;

    :cond_1c
    const-string v2, "template"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/wml/dom/WMLDocumentImpl;->_elementTypesWML:Ljava/util/Hashtable;

    sget-object v1, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLBrElementImpl:Ljava/lang/Class;

    if-nez v1, :cond_1d

    const-string v1, "org.apache.wml.dom.WMLBrElementImpl"

    invoke-static {v1}, Lorg/apache/wml/dom/WMLDocumentImpl;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLBrElementImpl:Ljava/lang/Class;

    :cond_1d
    const-string v2, "br"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/wml/dom/WMLDocumentImpl;->_elementTypesWML:Ljava/util/Hashtable;

    sget-object v1, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLOptionElementImpl:Ljava/lang/Class;

    if-nez v1, :cond_1e

    const-string v1, "org.apache.wml.dom.WMLOptionElementImpl"

    invoke-static {v1}, Lorg/apache/wml/dom/WMLDocumentImpl;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLOptionElementImpl:Ljava/lang/Class;

    :cond_1e
    const-string v2, "option"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/wml/dom/WMLDocumentImpl;->_elementTypesWML:Ljava/util/Hashtable;

    sget-object v1, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLUElementImpl:Ljava/lang/Class;

    if-nez v1, :cond_1f

    const-string v1, "org.apache.wml.dom.WMLUElementImpl"

    invoke-static {v1}, Lorg/apache/wml/dom/WMLDocumentImpl;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLUElementImpl:Ljava/lang/Class;

    :cond_1f
    const-string v2, "u"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/wml/dom/WMLDocumentImpl;->_elementTypesWML:Ljava/util/Hashtable;

    sget-object v1, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLPElementImpl:Ljava/lang/Class;

    if-nez v1, :cond_20

    const-string v1, "org.apache.wml.dom.WMLPElementImpl"

    invoke-static {v1}, Lorg/apache/wml/dom/WMLDocumentImpl;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLPElementImpl:Ljava/lang/Class;

    :cond_20
    const-string v2, "p"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/wml/dom/WMLDocumentImpl;->_elementTypesWML:Ljava/util/Hashtable;

    sget-object v1, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLSelectElementImpl:Ljava/lang/Class;

    if-nez v1, :cond_21

    const-string v1, "org.apache.wml.dom.WMLSelectElementImpl"

    invoke-static {v1}, Lorg/apache/wml/dom/WMLDocumentImpl;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLSelectElementImpl:Ljava/lang/Class;

    :cond_21
    const-string v2, "select"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/wml/dom/WMLDocumentImpl;->_elementTypesWML:Ljava/util/Hashtable;

    sget-object v1, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLEmElementImpl:Ljava/lang/Class;

    if-nez v1, :cond_22

    const-string v1, "org.apache.wml.dom.WMLEmElementImpl"

    invoke-static {v1}, Lorg/apache/wml/dom/WMLDocumentImpl;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLEmElementImpl:Ljava/lang/Class;

    :cond_22
    const-string v2, "em"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/wml/dom/WMLDocumentImpl;->_elementTypesWML:Ljava/util/Hashtable;

    sget-object v1, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLIElementImpl:Ljava/lang/Class;

    if-nez v1, :cond_23

    const-string v1, "org.apache.wml.dom.WMLIElementImpl"

    invoke-static {v1}, Lorg/apache/wml/dom/WMLDocumentImpl;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLIElementImpl:Ljava/lang/Class;

    :cond_23
    const-string v2, "i"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/wml/dom/WMLDocumentImpl;->_elementTypesWML:Ljava/util/Hashtable;

    sget-object v1, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLCardElementImpl:Ljava/lang/Class;

    if-nez v1, :cond_24

    const-string v1, "org.apache.wml.dom.WMLCardElementImpl"

    invoke-static {v1}, Lorg/apache/wml/dom/WMLDocumentImpl;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/wml/dom/WMLDocumentImpl;->class$org$apache$wml$dom$WMLCardElementImpl:Ljava/lang/Class;

    :cond_24
    const-string v2, "card"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/DocumentType;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/xerces/dom/DocumentImpl;-><init>(Lorg/w3c/dom/DocumentType;Z)V

    return-void
.end method

.method public static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public canRenameElements(Ljava/lang/String;Ljava/lang/String;Lorg/apache/xerces/dom/ElementImpl;)Z
    .locals 0

    sget-object p0, Lorg/apache/wml/dom/WMLDocumentImpl;->_elementTypesWML:Ljava/util/Hashtable;

    invoke-virtual {p0, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lorg/apache/wml/dom/WMLDocumentImpl;->_elementTypesWML:Ljava/util/Hashtable;

    invoke-virtual {p3}, Lorg/apache/xerces/dom/ElementImpl;->getTagName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    sget-object v0, Lorg/apache/wml/dom/WMLDocumentImpl;->_elementTypesWML:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    if-eqz v0, :cond_1

    :try_start_0
    sget-object v1, Lorg/apache/wml/dom/WMLDocumentImpl;->_elemClassSigWML:[Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Element;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    instance-of v0, p0, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/reflect/InvocationTargetException;

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object p0

    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Tag \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "\' associated with an Element class that failed to construct."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance v0, Lorg/apache/wml/dom/WMLElementImpl;

    invoke-direct {v0, p0, p1}, Lorg/apache/wml/dom/WMLElementImpl;-><init>(Lorg/apache/wml/dom/WMLDocumentImpl;Ljava/lang/String;)V

    return-object v0
.end method
