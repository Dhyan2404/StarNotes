.class public final Lorg/apache/xmlbeans/impl/store/Cursor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlCursor;
.implements Lorg/apache/xmlbeans/impl/store/Locale$ChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xmlbeans/impl/store/Cursor$WrapIOEx;,
        Lorg/apache/xmlbeans/impl/store/Cursor$WrapSAXEx;,
        Lorg/apache/xmlbeans/impl/store/Cursor$ChangeStampImpl;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field static final ATTR:I = 0x3

.field static final COMMENT:I = 0x4

.field private static final COPY_CHARS:I = 0x5

.field private static final COPY_XML:I = 0x1

.field private static final COPY_XML_CONTENTS:I = 0x3

.field static final ELEM:I = 0x2

.field private static final MOVE_CHARS:I = 0x4

.field private static final MOVE_XML:I = 0x0

.field private static final MOVE_XML_CONTENTS:I = 0x2

.field static final PROCINST:I = 0x5

.field static final ROOT:I = 0x1

.field static final TEXT:I


# instance fields
.field private _cur:Lorg/apache/xmlbeans/impl/store/Cur;

.field private _currentSelection:I

.field private _nextChangeListener:Lorg/apache/xmlbeans/impl/store/Locale$ChangeListener;

.field private _pathEngine:Lorg/apache/xmlbeans/impl/xpath/XPathEngine;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lorg/apache/xmlbeans/impl/store/Cur;)V
    .locals 1

    .line 5
    iget-object v0, p1, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    iget p1, p1, Lorg/apache/xmlbeans/impl/store/Cur;->_pos:I

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/impl/store/Cursor;-><init>(Lorg/apache/xmlbeans/impl/store/Xobj;I)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/xmlbeans/impl/store/Xobj;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object v0, p1, Lorg/apache/xmlbeans/impl/store/Xobj;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {v0, p0}, Lorg/apache/xmlbeans/impl/store/Locale;->weakCur(Ljava/lang/Object;)Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    .line 3
    invoke-virtual {v0, p1, p2}, Lorg/apache/xmlbeans/impl/store/Cur;->moveTo(Lorg/apache/xmlbeans/impl/store/Xobj;I)V

    const/4 p1, -0x1

    .line 4
    iput p1, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_currentSelection:I

    return-void
.end method

.method public static synthetic A0(Lorg/apache/xmlbeans/impl/store/Cursor;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cursor;->lambda$beginElement$58(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic B0(Lorg/apache/xmlbeans/impl/store/Cursor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/xmlbeans/impl/store/Cursor;->lambda$insertAttributeWithValue$67(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic C0(Lorg/apache/xmlbeans/impl/store/Cursor;I)Ljava/lang/Integer;
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cursor;->lambda$toNextChar$29(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic D0(Lorg/apache/xmlbeans/impl/store/Cursor;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/Cursor;->lambda$insertElementWithText$61(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic E0(Lorg/apache/xmlbeans/impl/store/Cursor;Ljava/lang/String;)Lorg/apache/xmlbeans/XmlCursor;
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cursor;->lambda$execQuery$46(Ljava/lang/String;)Lorg/apache/xmlbeans/XmlCursor;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic F0(Lorg/apache/xmlbeans/impl/store/Cursor;Ljava/io/Writer;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cursor;->lambda$save$10(Ljava/io/Writer;)V

    return-void
.end method

.method public static synthetic G0(Lorg/apache/xmlbeans/impl/store/Cursor;I)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cursor;->lambda$toChild$34(I)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic H(Lorg/apache/xmlbeans/impl/store/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cursor;->lambda$prefixForNamespace$27(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic H0(Lorg/apache/xmlbeans/impl/store/Cursor;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/Cursor;->lambda$insertAttributeWithValue$66(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic I(Lorg/apache/xmlbeans/impl/store/Cursor;Ljava/lang/Object;)Lorg/apache/xmlbeans/XmlCursor$XmlBookmark;
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cursor;->lambda$toPrevBookmark$24(Ljava/lang/Object;)Lorg/apache/xmlbeans/XmlCursor$XmlBookmark;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic I0(Lorg/apache/xmlbeans/impl/store/Cursor;Lorg/apache/xmlbeans/impl/store/Cursor;)Ljava/lang/Integer;
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cursor;->lambda$comparePosition$2(Lorg/apache/xmlbeans/impl/store/Cursor;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic J0(Lorg/apache/xmlbeans/impl/store/Cursor;Lorg/xml/sax/ContentHandler;Lorg/xml/sax/ext/LexicalHandler;Lorg/apache/xmlbeans/XmlOptions;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/xmlbeans/impl/store/Cursor;->lambda$save$15(Lorg/xml/sax/ContentHandler;Lorg/xml/sax/ext/LexicalHandler;Lorg/apache/xmlbeans/XmlOptions;)V

    return-void
.end method

.method public static synthetic K0(Lorg/apache/xmlbeans/impl/store/Cursor;Lorg/apache/xmlbeans/XmlOptions;)Ljava/io/Reader;
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cursor;->lambda$newReader$13(Lorg/apache/xmlbeans/XmlOptions;)Ljava/io/Reader;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic L0(Lorg/apache/xmlbeans/impl/store/Cursor;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/Cursor;->lambda$insertProcInst$71(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic M(Lorg/apache/xmlbeans/impl/store/Cursor;Lorg/apache/xmlbeans/impl/store/Cursor;)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cursor;->lambda$isLeftOf$3(Lorg/apache/xmlbeans/impl/store/Cursor;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic M0(Lorg/apache/xmlbeans/impl/store/Cursor;Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlCursor;
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/Cursor;->lambda$execQuery$47(Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlCursor;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic N0(Lorg/apache/xmlbeans/impl/store/Cursor;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cursor;->lambda$insertChars$53(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic O0(Lorg/apache/xmlbeans/impl/store/Cursor;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/Cursor;->lambda$insertElement$56(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic P0(Lorg/apache/xmlbeans/impl/store/Cursor;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cursor;->lambda$setTextValue$43(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic Q0(Lorg/apache/xmlbeans/impl/store/Cursor;Lorg/apache/xmlbeans/impl/store/Cursor;)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cursor;->lambda$isAtSamePositionAs$4(Lorg/apache/xmlbeans/impl/store/Cursor;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic R0(Lorg/apache/xmlbeans/impl/store/Cursor;Ljava/io/OutputStream;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cursor;->lambda$save$9(Ljava/io/OutputStream;)V

    return-void
.end method

.method public static synthetic S0(Lorg/apache/xmlbeans/impl/store/Cursor;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cursor;->lambda$insertComment$70(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic T0(Lorg/apache/xmlbeans/impl/store/Cursor;Ljava/lang/Object;)Lorg/apache/xmlbeans/XmlCursor$XmlBookmark;
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cursor;->lambda$getBookmark$49(Ljava/lang/Object;)Lorg/apache/xmlbeans/XmlCursor$XmlBookmark;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic U0(Lorg/apache/xmlbeans/impl/store/Cursor;Ljava/lang/Object;)Lorg/apache/xmlbeans/XmlCursor$XmlBookmark;
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cursor;->lambda$toNextBookmark$23(Ljava/lang/Object;)Lorg/apache/xmlbeans/XmlCursor$XmlBookmark;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic V0(Lorg/apache/xmlbeans/impl/store/Cursor;Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/Cursor;->lambda$selectPath$20(Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions;)V

    return-void
.end method

.method public static synthetic W0(Lorg/apache/xmlbeans/impl/store/Cursor;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cursor;->lambda$save$8(Ljava/io/File;)V

    return-void
.end method

.method public static synthetic X0(Lorg/apache/xmlbeans/impl/store/Cursor;Lorg/xml/sax/ContentHandler;Lorg/xml/sax/ext/LexicalHandler;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/Cursor;->lambda$save$7(Lorg/xml/sax/ContentHandler;Lorg/xml/sax/ext/LexicalHandler;)V

    return-void
.end method

.method public static synthetic Y0(Lorg/apache/xmlbeans/impl/store/Cursor;Lorg/apache/xmlbeans/XmlOptions;)Lorg/w3c/dom/Node;
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cursor;->lambda$newDomNode$14(Lorg/apache/xmlbeans/XmlOptions;)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic Z0(Lorg/apache/xmlbeans/impl/store/Cursor;Lorg/apache/xmlbeans/impl/store/Cursor;)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cursor;->lambda$toCursor$1(Lorg/apache/xmlbeans/impl/store/Cursor;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a1(Lorg/apache/xmlbeans/impl/store/Cursor;Lorg/apache/xmlbeans/XmlOptions;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cursor;->lambda$xmlText$11(Lorg/apache/xmlbeans/XmlOptions;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b1(Lorg/apache/xmlbeans/impl/store/Cursor;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/Cursor;->lambda$insertNamespace$69(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic c1(Lorg/apache/xmlbeans/impl/store/Cursor;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cursor;->lambda$getAllNamespaces$28(Ljava/util/Map;)V

    return-void
.end method

.method private checkContentInsertionValidity(Lorg/apache/xmlbeans/impl/store/Cursor;)Z
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->push()V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->next()Z

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->isFinish()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->pop()Z

    const/4 p0, 0x0

    return p0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-direct {p1, v0}, Lorg/apache/xmlbeans/impl/store/Cursor;->checkInsertionValidity(Lorg/apache/xmlbeans/impl/store/Cur;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->pop()Z

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p1

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->pop()Z

    throw p1
.end method

.method private checkCursors(Lorg/apache/xmlbeans/XmlCursor;)Lorg/apache/xmlbeans/impl/store/Cursor;
    .locals 2

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/store/Cursor;->checkThisCursor()V

    if-eqz p1, :cond_2

    instance-of p0, p1, Lorg/apache/xmlbeans/impl/store/Cursor;

    if-eqz p0, :cond_1

    check-cast p1, Lorg/apache/xmlbeans/impl/store/Cursor;

    iget-object p0, p1, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    if-eqz p0, :cond_0

    return-object p1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Other cursor has been disposed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Incompatible cursors: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Other cursor is <null>"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private checkInsertionValidity(Lorg/apache/xmlbeans/impl/store/Cur;)V
    .locals 5

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Cur;->kind()I

    move-result p1

    if-gez p1, :cond_0

    const-string v0, "Can\'t move/copy/insert an end token."

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/store/Cursor;->complain(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const-string v1, "Can\'t move/copy/insert a whole document."

    invoke-static {v1}, Lorg/apache/xmlbeans/impl/store/Cursor;->complain(Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/store/Cur;->kind()I

    move-result v1

    if-ne v1, v0, :cond_2

    const-string v2, "Can\'t insert before the start of the document."

    invoke-static {v2}, Lorg/apache/xmlbeans/impl/store/Cursor;->complain(Ljava/lang/String;)V

    :cond_2
    const-string v2, "Can only insert attributes before other attributes or after containers."

    const/4 v3, 0x3

    if-ne p1, v3, :cond_3

    iget-object v4, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v4}, Lorg/apache/xmlbeans/impl/store/Cur;->push()V

    iget-object v4, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v4}, Lorg/apache/xmlbeans/impl/store/Cur;->prevWithAttrs()Z

    iget-object v4, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v4}, Lorg/apache/xmlbeans/impl/store/Cur;->kind()I

    move-result v4

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->pop()Z

    const/4 p0, 0x2

    if-eq v4, p0, :cond_3

    if-eq v4, v0, :cond_3

    const/4 p0, -0x3

    if-eq v4, p0, :cond_3

    invoke-static {v2}, Lorg/apache/xmlbeans/impl/store/Cursor;->complain(Ljava/lang/String;)V

    :cond_3
    if-ne v1, v3, :cond_4

    if-eq p1, v3, :cond_4

    invoke-static {v2}, Lorg/apache/xmlbeans/impl/store/Cursor;->complain(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method private checkThisCursor()V
    .locals 1

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "This cursor has been disposed"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static complain(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic d1(Lorg/apache/xmlbeans/impl/store/Cursor;Ljavax/xml/namespace/QName;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/Cursor;->lambda$setAttributeText$40(Ljavax/xml/namespace/QName;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e0(Lorg/apache/xmlbeans/impl/store/Cursor;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cursor;->lambda$selectPath$19(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic e1(Lorg/apache/xmlbeans/impl/store/Cursor;Ljavax/xml/namespace/QName;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cursor;->lambda$insertAttribute$65(Ljavax/xml/namespace/QName;)V

    return-void
.end method

.method public static synthetic f(Lorg/apache/xmlbeans/impl/store/Cursor;Ljavax/xml/namespace/QName;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/Cursor;->lambda$insertElementWithText$60(Ljavax/xml/namespace/QName;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic f0(Lorg/apache/xmlbeans/impl/store/Cursor;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cursor;->lambda$toNextSibling$36(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f1(Lorg/apache/xmlbeans/impl/store/Cursor;[CII)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/xmlbeans/impl/store/Cursor;->lambda$setTextValue$44([CII)V

    return-void
.end method

.method public static synthetic g0(Lorg/apache/xmlbeans/impl/store/Cursor;Lorg/apache/xmlbeans/impl/store/Cursor;II)Ljava/lang/Integer;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/xmlbeans/impl/store/Cursor;->lambda$twoLocaleOp$0(Lorg/apache/xmlbeans/impl/store/Cursor;II)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g1(Lorg/apache/xmlbeans/impl/store/Cursor;Lorg/apache/xmlbeans/XmlCursor$XmlBookmark;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cursor;->lambda$setBookmark$48(Lorg/apache/xmlbeans/XmlCursor$XmlBookmark;)V

    return-void
.end method

.method public static getBookmark(Ljava/lang/Object;Lorg/apache/xmlbeans/impl/store/Cur;)Lorg/apache/xmlbeans/XmlCursor$XmlBookmark;
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1
    :cond_0
    invoke-virtual {p1, p0}, Lorg/apache/xmlbeans/impl/store/Cur;->getBookmark(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 2
    instance-of p1, p0, Lorg/apache/xmlbeans/XmlCursor$XmlBookmark;

    if-eqz p1, :cond_1

    move-object v0, p0

    check-cast v0, Lorg/apache/xmlbeans/XmlCursor$XmlBookmark;

    :cond_1
    return-object v0
.end method

.method public static synthetic h0(Lorg/apache/xmlbeans/impl/store/Cursor;Ljavax/xml/namespace/QName;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cursor;->lambda$getAttributeText$39(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h1(Lorg/apache/xmlbeans/impl/store/Cursor;Lorg/apache/xmlbeans/impl/store/Cursor;)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cursor;->lambda$isRightOf$5(Lorg/apache/xmlbeans/impl/store/Cursor;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i0(Lorg/apache/xmlbeans/impl/store/Cursor;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cursor;->lambda$insertElement$55(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic i1(Lorg/apache/xmlbeans/impl/store/Cursor;Ljava/io/OutputStream;Lorg/apache/xmlbeans/XmlOptions;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/Cursor;->lambda$save$17(Ljava/io/OutputStream;Lorg/apache/xmlbeans/XmlOptions;)V

    return-void
.end method

.method private insertNode(Lorg/apache/xmlbeans/impl/store/Cur;Ljava/lang/String;)V
    .locals 1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Cur;->next()Z

    invoke-virtual {p1, p2}, Lorg/apache/xmlbeans/impl/store/Cur;->insertString(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Cur;->toParent()Z

    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cursor;->checkInsertionValidity(Lorg/apache/xmlbeans/impl/store/Cur;)V

    iget-object p2, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {p1, p2}, Lorg/apache/xmlbeans/impl/store/Cur;->moveNode(Lorg/apache/xmlbeans/impl/store/Cur;)V

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Cur;->toEnd()V

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->nextWithAttrs()Z

    return-void
.end method

.method private isDomFragment()Z
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cursor;->isStartdoc()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cursor;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object p0

    :try_start_0
    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlCursor;->toNextToken()Lorg/apache/xmlbeans/XmlCursor$TokenType;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/XmlCursor$TokenType;->intValue()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlCursor;->close()V

    return v1

    :pswitch_1
    :try_start_1
    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlCursor;->getChars()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->isWhiteSpace(Ljava/lang/String;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlCursor;->close()V

    return v1

    :cond_1
    :try_start_2
    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlCursor;->toNextToken()Lorg/apache/xmlbeans/XmlCursor$TokenType;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/XmlCursor$TokenType;->intValue()I

    move-result v0

    goto :goto_0

    :pswitch_2
    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlCursor;->toNextToken()Lorg/apache/xmlbeans/XmlCursor$TokenType;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/XmlCursor$TokenType;->intValue()I

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :pswitch_3
    if-eqz v2, :cond_2

    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlCursor;->close()V

    return v1

    :cond_2
    :try_start_3
    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlCursor;->toEndToken()Lorg/apache/xmlbeans/XmlCursor$TokenType;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/XmlCursor$TokenType;->intValue()I

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v2, v1

    goto :goto_0

    :pswitch_4
    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlCursor;->close()V

    xor-int/lit8 p0, v2, 0x1

    return p0

    :catchall_0
    move-exception v0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz p0, :cond_3

    :try_start_5
    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlCursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p0

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private isValid()Z
    .locals 0

    .line 6
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/Cursor;->isValid(Lorg/apache/xmlbeans/impl/store/Cur;)Z

    move-result p0

    return p0
.end method

.method private static isValid(Lorg/apache/xmlbeans/impl/store/Cur;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->kind()I

    move-result v0

    if-gtz v0, :cond_2

    .line 2
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->push()V

    .line 3
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->toParentRaw()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->kind()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 5
    :cond_1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->pop()Z

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic j(Lorg/apache/xmlbeans/impl/store/Cursor;I)Ljava/lang/Integer;
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cursor;->lambda$removeChars$52(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j0(Lorg/apache/xmlbeans/impl/store/Cursor;Lorg/apache/xmlbeans/XmlOptions;)Ljava/io/InputStream;
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cursor;->lambda$newInputStream$12(Lorg/apache/xmlbeans/XmlOptions;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j1(Lorg/apache/xmlbeans/impl/store/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cursor;->lambda$namespaceForPrefix$26(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k0(Lorg/apache/xmlbeans/impl/store/Cursor;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/Cursor;->lambda$toChild$32(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k1(Lorg/apache/xmlbeans/impl/store/Cursor;Ljavax/xml/namespace/QName;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cursor;->lambda$setName$25(Ljavax/xml/namespace/QName;)V

    return-void
.end method

.method public static synthetic l0(Lorg/apache/xmlbeans/impl/store/Cursor;[CII)Ljava/lang/Integer;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/xmlbeans/impl/store/Cursor;->lambda$getTextValue$42([CII)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l1(Lorg/apache/xmlbeans/impl/store/Cursor;Lorg/apache/xmlbeans/XmlOptions;)Ljavax/xml/stream/XMLStreamReader;
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cursor;->lambda$newXMLStreamReader$6(Lorg/apache/xmlbeans/XmlOptions;)Ljavax/xml/stream/XMLStreamReader;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$beginElement$57(Ljavax/xml/namespace/QName;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cursor;->_beginElement(Ljavax/xml/namespace/QName;)V

    return-void
.end method

.method private synthetic lambda$beginElement$58(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cursor;->_beginElement(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$beginElement$59(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/Cursor;->_beginElement(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$clearBookmark$50(Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cursor;->_clearBookmark(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$comparePosition$2(Lorg/apache/xmlbeans/impl/store/Cursor;)Ljava/lang/Integer;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cursor;->_comparePosition(Lorg/apache/xmlbeans/impl/store/Cursor;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$execQuery$46(Ljava/lang/String;)Lorg/apache/xmlbeans/XmlCursor;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cursor;->_execQuery(Ljava/lang/String;)Lorg/apache/xmlbeans/XmlCursor;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$execQuery$47(Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlCursor;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/Cursor;->_execQuery(Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlCursor;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getAllBookmarkRefs$51(Ljava/util/Collection;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cursor;->_getAllBookmarkRefs(Ljava/util/Collection;)V

    return-void
.end method

.method private synthetic lambda$getAllNamespaces$28(Ljava/util/Map;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cursor;->_getAllNamespaces(Ljava/util/Map;)V

    return-void
.end method

.method private synthetic lambda$getAttributeText$39(Ljavax/xml/namespace/QName;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cursor;->_getAttributeText(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getBookmark$49(Ljava/lang/Object;)Lorg/apache/xmlbeans/XmlCursor$XmlBookmark;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cursor;->_getBookmark(Ljava/lang/Object;)Lorg/apache/xmlbeans/XmlCursor$XmlBookmark;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getChars$45([CII)Ljava/lang/Integer;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/xmlbeans/impl/store/Cursor;->_getChars([CII)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getTextValue$42([CII)Ljava/lang/Integer;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/xmlbeans/impl/store/Cursor;->_getTextValue([CII)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$insertAttribute$63(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cursor;->_insertAttribute(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$insertAttribute$64(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/Cursor;->_insertAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$insertAttribute$65(Ljavax/xml/namespace/QName;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cursor;->_insertAttribute(Ljavax/xml/namespace/QName;)V

    return-void
.end method

.method private synthetic lambda$insertAttributeWithValue$66(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/Cursor;->_insertAttributeWithValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$insertAttributeWithValue$67(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/xmlbeans/impl/store/Cursor;->_insertAttributeWithValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$insertAttributeWithValue$68(Ljavax/xml/namespace/QName;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/Cursor;->_insertAttributeWithValue(Ljavax/xml/namespace/QName;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$insertChars$53(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cursor;->_insertChars(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$insertComment$70(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cursor;->_insertComment(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$insertElement$54(Ljavax/xml/namespace/QName;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cursor;->_insertElement(Ljavax/xml/namespace/QName;)V

    return-void
.end method

.method private synthetic lambda$insertElement$55(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cursor;->_insertElement(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$insertElement$56(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/Cursor;->_insertElement(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$insertElementWithText$60(Ljavax/xml/namespace/QName;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/Cursor;->_insertElementWithText(Ljavax/xml/namespace/QName;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$insertElementWithText$61(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/Cursor;->_insertElementWithText(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$insertElementWithText$62(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/xmlbeans/impl/store/Cursor;->_insertElementWithText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$insertNamespace$69(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/Cursor;->_insertNamespace(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$insertProcInst$71(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/Cursor;->_insertProcInst(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$isAtSamePositionAs$4(Lorg/apache/xmlbeans/impl/store/Cursor;)Ljava/lang/Boolean;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cursor;->_isAtSamePositionAs(Lorg/apache/xmlbeans/impl/store/Cursor;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$isLeftOf$3(Lorg/apache/xmlbeans/impl/store/Cursor;)Ljava/lang/Boolean;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cursor;->_isLeftOf(Lorg/apache/xmlbeans/impl/store/Cursor;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$isRightOf$5(Lorg/apache/xmlbeans/impl/store/Cursor;)Ljava/lang/Boolean;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cursor;->_isRightOf(Lorg/apache/xmlbeans/impl/store/Cursor;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$namespaceForPrefix$26(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cursor;->_namespaceForPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$newDomNode$14(Lorg/apache/xmlbeans/XmlOptions;)Lorg/w3c/dom/Node;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cursor;->_newDomNode(Lorg/apache/xmlbeans/XmlOptions;)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$newInputStream$12(Lorg/apache/xmlbeans/XmlOptions;)Ljava/io/InputStream;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cursor;->_newInputStream(Lorg/apache/xmlbeans/XmlOptions;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$newReader$13(Lorg/apache/xmlbeans/XmlOptions;)Ljava/io/Reader;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cursor;->_newReader(Lorg/apache/xmlbeans/XmlOptions;)Ljava/io/Reader;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$newXMLStreamReader$6(Lorg/apache/xmlbeans/XmlOptions;)Ljavax/xml/stream/XMLStreamReader;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cursor;->_newXMLStreamReader(Lorg/apache/xmlbeans/XmlOptions;)Ljavax/xml/stream/XMLStreamReader;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$prefixForNamespace$27(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cursor;->_prefixForNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$removeAttribute$41(Ljavax/xml/namespace/QName;)Ljava/lang/Boolean;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cursor;->_removeAttribute(Ljavax/xml/namespace/QName;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$removeChars$52(I)Ljava/lang/Integer;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cursor;->_removeChars(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$save$10(Ljava/io/Writer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cursor;->_save(Ljava/io/Writer;)V

    return-void
.end method

.method private synthetic lambda$save$15(Lorg/xml/sax/ContentHandler;Lorg/xml/sax/ext/LexicalHandler;Lorg/apache/xmlbeans/XmlOptions;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/xmlbeans/impl/store/Cursor;->_save(Lorg/xml/sax/ContentHandler;Lorg/xml/sax/ext/LexicalHandler;Lorg/apache/xmlbeans/XmlOptions;)V

    return-void
.end method

.method private synthetic lambda$save$16(Ljava/io/File;Lorg/apache/xmlbeans/XmlOptions;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/Cursor;->_save(Ljava/io/File;Lorg/apache/xmlbeans/XmlOptions;)V

    return-void
.end method

.method private synthetic lambda$save$17(Ljava/io/OutputStream;Lorg/apache/xmlbeans/XmlOptions;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/Cursor;->_save(Ljava/io/OutputStream;Lorg/apache/xmlbeans/XmlOptions;)V

    return-void
.end method

.method private synthetic lambda$save$18(Ljava/io/Writer;Lorg/apache/xmlbeans/XmlOptions;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/Cursor;->_save(Ljava/io/Writer;Lorg/apache/xmlbeans/XmlOptions;)V

    return-void
.end method

.method private synthetic lambda$save$7(Lorg/xml/sax/ContentHandler;Lorg/xml/sax/ext/LexicalHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/Cursor;->_save(Lorg/xml/sax/ContentHandler;Lorg/xml/sax/ext/LexicalHandler;)V

    return-void
.end method

.method private synthetic lambda$save$8(Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cursor;->_save(Ljava/io/File;)V

    return-void
.end method

.method private synthetic lambda$save$9(Ljava/io/OutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cursor;->_save(Ljava/io/OutputStream;)V

    return-void
.end method

.method private synthetic lambda$selectPath$19(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cursor;->_selectPath(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$selectPath$20(Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/Cursor;->_selectPath(Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions;)V

    return-void
.end method

.method private synthetic lambda$setAttributeText$40(Ljavax/xml/namespace/QName;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/Cursor;->_setAttributeText(Ljavax/xml/namespace/QName;Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$setBookmark$48(Lorg/apache/xmlbeans/XmlCursor$XmlBookmark;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cursor;->_setBookmark(Lorg/apache/xmlbeans/XmlCursor$XmlBookmark;)V

    return-void
.end method

.method private synthetic lambda$setName$25(Ljavax/xml/namespace/QName;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cursor;->_setName(Ljavax/xml/namespace/QName;)V

    return-void
.end method

.method private synthetic lambda$setTextValue$43(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cursor;->_setTextValue(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$setTextValue$44([CII)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/xmlbeans/impl/store/Cursor;->_setTextValue([CII)V

    return-void
.end method

.method private synthetic lambda$toBookmark$22(Lorg/apache/xmlbeans/XmlCursor$XmlBookmark;)Ljava/lang/Boolean;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cursor;->_toBookmark(Lorg/apache/xmlbeans/XmlCursor$XmlBookmark;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$toChild$31(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cursor;->_toChild(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$toChild$32(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/Cursor;->_toChild(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$toChild$33(Ljavax/xml/namespace/QName;)Ljava/lang/Boolean;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cursor;->_toChild(Ljavax/xml/namespace/QName;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$toChild$34(I)Ljava/lang/Boolean;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cursor;->_toChild(I)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$toChild$35(Ljavax/xml/namespace/QName;I)Ljava/lang/Boolean;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/Cursor;->_toChild(Ljavax/xml/namespace/QName;I)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$toCursor$1(Lorg/apache/xmlbeans/impl/store/Cursor;)Ljava/lang/Boolean;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cursor;->_toCursor(Lorg/apache/xmlbeans/impl/store/Cursor;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$toNextBookmark$23(Ljava/lang/Object;)Lorg/apache/xmlbeans/XmlCursor$XmlBookmark;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cursor;->_toNextBookmark(Ljava/lang/Object;)Lorg/apache/xmlbeans/XmlCursor$XmlBookmark;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$toNextChar$29(I)Ljava/lang/Integer;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cursor;->_toNextChar(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$toNextSibling$36(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cursor;->_toNextSibling(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$toNextSibling$37(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/Cursor;->_toNextSibling(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$toNextSibling$38(Ljavax/xml/namespace/QName;)Ljava/lang/Boolean;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cursor;->_toNextSibling(Ljavax/xml/namespace/QName;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$toPrevBookmark$24(Ljava/lang/Object;)Lorg/apache/xmlbeans/XmlCursor$XmlBookmark;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cursor;->_toPrevBookmark(Ljava/lang/Object;)Lorg/apache/xmlbeans/XmlCursor$XmlBookmark;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$toPrevChar$30(I)Ljava/lang/Integer;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cursor;->_toPrevChar(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$toSelection$21(I)Ljava/lang/Boolean;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cursor;->_toSelection(I)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$twoLocaleOp$0(Lorg/apache/xmlbeans/impl/store/Cursor;II)Ljava/lang/Integer;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/xmlbeans/impl/store/Cursor;->twoLocaleOp(Lorg/apache/xmlbeans/impl/store/Cursor;II)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$xmlText$11(Lorg/apache/xmlbeans/XmlOptions;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cursor;->_xmlText(Lorg/apache/xmlbeans/XmlOptions;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic m0(Lorg/apache/xmlbeans/impl/store/Cursor;I)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cursor;->lambda$toSelection$21(I)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic m1(Lorg/apache/xmlbeans/impl/store/Cursor;Ljavax/xml/namespace/QName;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cursor;->lambda$beginElement$57(Ljavax/xml/namespace/QName;)V

    return-void
.end method

.method public static synthetic n0(Lorg/apache/xmlbeans/impl/store/Cursor;Ljavax/xml/namespace/QName;)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cursor;->lambda$toChild$33(Ljavax/xml/namespace/QName;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic n1(Lorg/apache/xmlbeans/impl/store/Cursor;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/Cursor;->lambda$insertAttribute$64(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static newCursor(Lorg/apache/xmlbeans/impl/store/Xobj;I)Lorg/apache/xmlbeans/XmlCursor;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    .line 2
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->noSync()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    .line 4
    :try_start_0
    new-instance v1, Lorg/apache/xmlbeans/impl/store/Cursor;

    invoke-direct {v1, p0, p1}, Lorg/apache/xmlbeans/impl/store/Cursor;-><init>(Lorg/apache/xmlbeans/impl/store/Xobj;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    return-object v1

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    .line 6
    throw p0

    .line 7
    :cond_0
    monitor-enter v0

    .line 8
    :try_start_1
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 9
    :try_start_2
    new-instance v1, Lorg/apache/xmlbeans/impl/store/Cursor;

    invoke-direct {v1, p0, p1}, Lorg/apache/xmlbeans/impl/store/Cursor;-><init>(Lorg/apache/xmlbeans/impl/store/Xobj;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 10
    :try_start_3
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    monitor-exit v0

    return-object v1

    :catchall_1
    move-exception p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    .line 11
    throw p0

    :catchall_2
    move-exception p0

    .line 12
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0
.end method

.method public static synthetic o0(Lorg/apache/xmlbeans/impl/store/Cursor;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/Cursor;->lambda$beginElement$59(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic o1(Lorg/apache/xmlbeans/impl/store/Cursor;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/Cursor;->lambda$toNextSibling$37(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic p0(Lorg/apache/xmlbeans/impl/store/Cursor;Ljavax/xml/namespace/QName;)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cursor;->lambda$toNextSibling$38(Ljavax/xml/namespace/QName;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic p1(Lorg/apache/xmlbeans/impl/store/Cursor;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cursor;->lambda$toChild$31(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private preCheck(Lorg/apache/xmlbeans/XmlCursor;)Lorg/apache/xmlbeans/impl/store/Cursor;
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cursor;->checkCursors(Lorg/apache/xmlbeans/XmlCursor;)Lorg/apache/xmlbeans/impl/store/Cursor;

    move-result-object p1

    .line 2
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    iget-object v0, p1, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    if-ne p0, v0, :cond_0

    return-object p1

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cursors not in same document"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private preCheck()Z
    .locals 0

    .line 4
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/store/Cursor;->checkThisCursor()V

    .line 5
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->noSync()Z

    move-result p0

    return p0
.end method

.method public static synthetic q0(Lorg/apache/xmlbeans/impl/store/Cursor;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cursor;->lambda$insertAttribute$63(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic q1(Lorg/apache/xmlbeans/impl/store/Cursor;I)Ljava/lang/Integer;
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cursor;->lambda$toPrevChar$30(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic r0(Lorg/apache/xmlbeans/impl/store/Cursor;Ljavax/xml/namespace/QName;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cursor;->lambda$insertElement$54(Ljavax/xml/namespace/QName;)V

    return-void
.end method

.method public static synthetic r1(Lorg/apache/xmlbeans/impl/store/Cursor;Ljavax/xml/namespace/QName;I)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/Cursor;->lambda$toChild$35(Ljavax/xml/namespace/QName;I)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic s0(Lorg/apache/xmlbeans/impl/store/Cursor;Ljava/io/File;Lorg/apache/xmlbeans/XmlOptions;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/Cursor;->lambda$save$16(Ljava/io/File;Lorg/apache/xmlbeans/XmlOptions;)V

    return-void
.end method

.method private setTextValue(Ljava/lang/Object;II)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->isNode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/apache/xmlbeans/impl/store/Cur;->moveNodeContents(Lorg/apache/xmlbeans/impl/store/Cur;Z)V

    .line 3
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->next()Z

    .line 4
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/xmlbeans/impl/store/Cur;->insertChars(Ljava/lang/Object;II)V

    .line 5
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->toParent()Z

    return-void

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Can\'t set text value, current token can have no text value"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private syncWrap(Ljava/util/function/Supplier;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Supplier<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 6
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/store/Cursor;->preCheck()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 7
    invoke-direct {p0, p1, v1}, Lorg/apache/xmlbeans/impl/store/Cursor;->syncWrapHelper(Ljava/util/function/Supplier;Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 8
    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    monitor-enter v0

    .line 9
    :try_start_0
    invoke-direct {p0, p1, v1}, Lorg/apache/xmlbeans/impl/store/Cursor;->syncWrapHelper(Ljava/util/function/Supplier;Z)Ljava/lang/Object;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 10
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private syncWrap(Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/store/Cursor;->preCheck()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, p1, v1}, Lorg/apache/xmlbeans/impl/store/Cursor;->syncWrapHelper(Ljava/lang/Runnable;Z)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    monitor-enter v0

    .line 4
    :try_start_0
    invoke-direct {p0, p1, v1}, Lorg/apache/xmlbeans/impl/store/Cursor;->syncWrapHelper(Ljava/lang/Runnable;Z)V

    .line 5
    monitor-exit v0

    :goto_0
    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private syncWrapHelper(Ljava/util/function/Supplier;Z)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Supplier<",
            "TT;>;Z)TT;"
        }
    .end annotation

    .line 6
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    if-eqz p2, :cond_0

    .line 7
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    .line 8
    :cond_0
    :try_start_0
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_1

    .line 9
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    :cond_1
    return-object p1

    :catchall_0
    move-exception p1

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    .line 10
    :cond_2
    throw p1
.end method

.method private syncWrapHelper(Ljava/lang/Runnable;Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    .line 3
    :cond_0
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_1

    .line 4
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    .line 5
    :cond_2
    throw p1
.end method

.method private syncWrapHelper(Lorg/apache/xmlbeans/impl/store/Cursor$WrapIOEx;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 16
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    .line 17
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    .line 18
    :try_start_0
    invoke-interface {p1}, Lorg/apache/xmlbeans/impl/store/Cursor$WrapIOEx;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    .line 20
    throw p1
.end method

.method private syncWrapHelper(Lorg/apache/xmlbeans/impl/store/Cursor$WrapSAXEx;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 11
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    .line 12
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    .line 13
    :try_start_0
    invoke-interface {p1}, Lorg/apache/xmlbeans/impl/store/Cursor$WrapSAXEx;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    .line 15
    throw p1
.end method

.method private syncWrapIOEx(Lorg/apache/xmlbeans/impl/store/Cursor$WrapIOEx;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/store/Cursor;->preCheck()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cursor;->syncWrapHelper(Lorg/apache/xmlbeans/impl/store/Cursor$WrapIOEx;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cursor;->syncWrapHelper(Lorg/apache/xmlbeans/impl/store/Cursor$WrapIOEx;)V

    monitor-exit v0

    :goto_0
    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private syncWrapNoEnter(Ljava/util/function/Supplier;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Supplier<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/store/Cursor;->preCheck()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, p1, v1}, Lorg/apache/xmlbeans/impl/store/Cursor;->syncWrapHelper(Ljava/util/function/Supplier;Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    monitor-enter v0

    .line 4
    :try_start_0
    invoke-direct {p0, p1, v1}, Lorg/apache/xmlbeans/impl/store/Cursor;->syncWrapHelper(Ljava/util/function/Supplier;Z)Ljava/lang/Object;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private syncWrapNoEnter(Ljava/lang/Runnable;)V
    .locals 2

    .line 6
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/store/Cursor;->preCheck()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 7
    invoke-direct {p0, p1, v1}, Lorg/apache/xmlbeans/impl/store/Cursor;->syncWrapHelper(Ljava/lang/Runnable;Z)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    monitor-enter v0

    .line 9
    :try_start_0
    invoke-direct {p0, p1, v1}, Lorg/apache/xmlbeans/impl/store/Cursor;->syncWrapHelper(Ljava/lang/Runnable;Z)V

    .line 10
    monitor-exit v0

    :goto_0
    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private syncWrapSAXEx(Lorg/apache/xmlbeans/impl/store/Cursor$WrapSAXEx;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/store/Cursor;->preCheck()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cursor;->syncWrapHelper(Lorg/apache/xmlbeans/impl/store/Cursor$WrapSAXEx;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cursor;->syncWrapHelper(Lorg/apache/xmlbeans/impl/store/Cursor$WrapSAXEx;)V

    monitor-exit v0

    :goto_0
    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static synthetic t0(Lorg/apache/xmlbeans/impl/store/Cursor;Ljava/util/Collection;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cursor;->lambda$getAllBookmarkRefs$51(Ljava/util/Collection;)V

    return-void
.end method

.method private twoLocaleOp(Lorg/apache/xmlbeans/XmlCursor;II)I
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cursor;->checkCursors(Lorg/apache/xmlbeans/XmlCursor;)Lorg/apache/xmlbeans/impl/store/Cursor;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    .line 3
    iget-object v1, p1, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    iget-object v1, v1, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    if-ne v0, v1, :cond_0

    .line 4
    new-instance v0, Lcom/sunia/HTREnginev2/ble;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/sunia/HTREnginev2/ble;-><init>(Lorg/apache/xmlbeans/impl/store/Cursor;Lorg/apache/xmlbeans/impl/store/Cursor;II)V

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cursor;->syncWrapNoEnter(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 5
    :cond_0
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->noSync()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 6
    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/store/Locale;->noSync()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/xmlbeans/impl/store/Cursor;->twoLocaleOp(Lorg/apache/xmlbeans/impl/store/Cursor;II)I

    move-result p0

    return p0

    .line 8
    :cond_1
    monitor-enter v1

    .line 9
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/xmlbeans/impl/store/Cursor;->twoLocaleOp(Lorg/apache/xmlbeans/impl/store/Cursor;II)I

    move-result p0

    monitor-exit v1

    return p0

    :catchall_0
    move-exception p0

    .line 10
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 11
    :cond_2
    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/store/Locale;->noSync()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 12
    monitor-enter v0

    .line 13
    :try_start_1
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/xmlbeans/impl/store/Cursor;->twoLocaleOp(Lorg/apache/xmlbeans/impl/store/Cursor;II)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_1
    move-exception p0

    .line 14
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :cond_3
    const/4 v2, 0x0

    .line 15
    :try_start_2
    invoke-static {}, Lorg/apache/xmlbeans/impl/common/GlobalLock;->acquire()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_7

    const/4 v3, 0x1

    .line 16
    :try_start_3
    monitor-enter v0
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    .line 17
    :try_start_4
    monitor-enter v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 18
    :try_start_5
    invoke-static {}, Lorg/apache/xmlbeans/impl/common/GlobalLock;->release()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 19
    :try_start_6
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/xmlbeans/impl/store/Cursor;->twoLocaleOp(Lorg/apache/xmlbeans/impl/store/Cursor;II)I

    move-result p0

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    return p0

    :catchall_2
    move-exception p0

    goto :goto_0

    :catchall_3
    move-exception p0

    move v2, v3

    .line 20
    :goto_0
    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    throw p0

    :catchall_4
    move-exception p0

    move v2, v3

    .line 21
    :goto_1
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    :try_start_a
    throw p0
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    :catchall_5
    move-exception p0

    goto :goto_1

    :catchall_6
    move-exception p0

    move v2, v3

    goto :goto_3

    :catch_0
    move-exception p0

    move v2, v3

    goto :goto_2

    :catchall_7
    move-exception p0

    goto :goto_3

    :catch_1
    move-exception p0

    .line 22
    :goto_2
    :try_start_b
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    :goto_3
    if-eqz v2, :cond_4

    .line 23
    invoke-static {}, Lorg/apache/xmlbeans/impl/common/GlobalLock;->release()V

    .line 24
    :cond_4
    throw p0
.end method

.method private twoLocaleOp(Lorg/apache/xmlbeans/impl/store/Cursor;II)I
    .locals 3

    .line 25
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    .line 26
    iget-object v1, p1, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    iget-object v1, v1, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    .line 27
    invoke-virtual {v0, v1}, Lorg/apache/xmlbeans/impl/store/Locale;->enter(Lorg/apache/xmlbeans/impl/store/Locale;)V

    if-eqz p2, :cond_5

    const/4 v2, 0x1

    if-eq p2, v2, :cond_4

    const/4 v2, 0x2

    if-eq p2, v2, :cond_3

    const/4 v2, 0x3

    if-eq p2, v2, :cond_2

    const/4 v2, 0x4

    if-eq p2, v2, :cond_1

    const/4 v2, 0x5

    if-ne p2, v2, :cond_0

    .line 28
    :try_start_0
    invoke-virtual {p0, p3, p1}, Lorg/apache/xmlbeans/impl/store/Cursor;->_copyChars(ILorg/apache/xmlbeans/impl/store/Cursor;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    invoke-virtual {v0, v1}, Lorg/apache/xmlbeans/impl/store/Locale;->exit(Lorg/apache/xmlbeans/impl/store/Locale;)V

    return p0

    .line 30
    :cond_0
    :try_start_1
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown operation: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 31
    :cond_1
    invoke-virtual {p0, p3, p1}, Lorg/apache/xmlbeans/impl/store/Cursor;->_moveChars(ILorg/apache/xmlbeans/impl/store/Cursor;)I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    invoke-virtual {v0, v1}, Lorg/apache/xmlbeans/impl/store/Locale;->exit(Lorg/apache/xmlbeans/impl/store/Locale;)V

    return p0

    .line 33
    :cond_2
    :try_start_2
    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cursor;->_copyXmlContents(Lorg/apache/xmlbeans/impl/store/Cursor;)Z

    move-result p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 34
    invoke-virtual {v0, v1}, Lorg/apache/xmlbeans/impl/store/Locale;->exit(Lorg/apache/xmlbeans/impl/store/Locale;)V

    return p0

    .line 35
    :cond_3
    :try_start_3
    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cursor;->_moveXmlContents(Lorg/apache/xmlbeans/impl/store/Cursor;)Z

    move-result p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 36
    invoke-virtual {v0, v1}, Lorg/apache/xmlbeans/impl/store/Locale;->exit(Lorg/apache/xmlbeans/impl/store/Locale;)V

    return p0

    .line 37
    :cond_4
    :try_start_4
    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cursor;->_copyXml(Lorg/apache/xmlbeans/impl/store/Cursor;)Z

    move-result p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 38
    invoke-virtual {v0, v1}, Lorg/apache/xmlbeans/impl/store/Locale;->exit(Lorg/apache/xmlbeans/impl/store/Locale;)V

    return p0

    .line 39
    :cond_5
    :try_start_5
    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cursor;->_moveXml(Lorg/apache/xmlbeans/impl/store/Cursor;)Z

    move-result p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 40
    invoke-virtual {v0, v1}, Lorg/apache/xmlbeans/impl/store/Locale;->exit(Lorg/apache/xmlbeans/impl/store/Locale;)V

    return p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0, v1}, Lorg/apache/xmlbeans/impl/store/Locale;->exit(Lorg/apache/xmlbeans/impl/store/Locale;)V

    .line 41
    throw p0
.end method

.method public static synthetic u0(Lorg/apache/xmlbeans/impl/store/Cursor;Lorg/apache/xmlbeans/XmlCursor$XmlBookmark;)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cursor;->lambda$toBookmark$22(Lorg/apache/xmlbeans/XmlCursor$XmlBookmark;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic v0(Lorg/apache/xmlbeans/impl/store/Cursor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/xmlbeans/impl/store/Cursor;->lambda$insertElementWithText$62(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static validateLocalName(Ljava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_2

    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-static {p0}, Lorg/apache/xmlbeans/impl/common/XMLChar;->isValidNCName(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 5
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Name is not valid"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Name is empty"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 7
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Name is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static validateLocalName(Ljavax/xml/namespace/QName;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/Cursor;->validateLocalName(Ljava/lang/String;)V

    return-void

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "QName is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static validatePrefix(Ljava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->beginsWithXml(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/common/XMLChar;->isValidNCName(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Prefix is not valid"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Prefix begins with \'xml\'"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Prefix is empty"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Prefix is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic w(Lorg/apache/xmlbeans/impl/store/Cursor;Ljava/io/Writer;Lorg/apache/xmlbeans/XmlOptions;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/Cursor;->lambda$save$18(Ljava/io/Writer;Lorg/apache/xmlbeans/XmlOptions;)V

    return-void
.end method

.method public static synthetic w0(Lorg/apache/xmlbeans/impl/store/Cursor;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cursor;->lambda$clearBookmark$50(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic x0(Lorg/apache/xmlbeans/impl/store/Cursor;[CII)Ljava/lang/Integer;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/xmlbeans/impl/store/Cursor;->lambda$getChars$45([CII)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic y0(Lorg/apache/xmlbeans/impl/store/Cursor;Ljavax/xml/namespace/QName;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/Cursor;->lambda$insertAttributeWithValue$68(Ljavax/xml/namespace/QName;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic z0(Lorg/apache/xmlbeans/impl/store/Cursor;Ljavax/xml/namespace/QName;)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cursor;->lambda$removeAttribute$41(Ljavax/xml/namespace/QName;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public ___toNextSibling()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->hasParent()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->getParentNoRoot()Lorg/apache/xmlbeans/impl/store/Xobj;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    :try_start_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->getParent()Lorg/apache/xmlbeans/impl/store/Xobj;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    iget-object v1, v1, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw v0

    :cond_1
    :goto_0
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-static {p0, v0}, Lorg/apache/xmlbeans/impl/store/Locale;->toNextSiblingElement(Lorg/apache/xmlbeans/impl/store/Cur;Lorg/apache/xmlbeans/impl/store/Xobj;)Z

    move-result p0

    return p0
.end method

.method public _addToSelection()V
    .locals 1

    const v0, 0x7fffffff

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cursor;->_toSelection(I)Z

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->addToSelection()V

    return-void
.end method

.method public _beginElement(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, v0}, Lorg/apache/xmlbeans/impl/store/Cursor;->_insertElementWithText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cursor;->_toPrevToken()Lorg/apache/xmlbeans/XmlCursor$TokenType;

    return-void
.end method

.method public _beginElement(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/xmlbeans/impl/store/Cursor;->_insertElementWithText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cursor;->_toPrevToken()Lorg/apache/xmlbeans/XmlCursor$TokenType;

    return-void
.end method

.method public _beginElement(Ljavax/xml/namespace/QName;)V
    .locals 1

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, p1, v0}, Lorg/apache/xmlbeans/impl/store/Cursor;->_insertElementWithText(Ljavax/xml/namespace/QName;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cursor;->_toPrevToken()Lorg/apache/xmlbeans/XmlCursor$TokenType;

    return-void
.end method

.method public _clearBookmark(Ljava/lang/Object;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/xmlbeans/impl/store/Cur;->setBookmark(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/xmlbeans/impl/store/Bookmark;

    :cond_0
    return-void
.end method

.method public _clearSelections()V
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_pathEngine:Lorg/apache/xmlbeans/impl/xpath/XPathEngine;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/xmlbeans/impl/xpath/XPathEngine;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_pathEngine:Lorg/apache/xmlbeans/impl/xpath/XPathEngine;

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->clearSelection()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_currentSelection:I

    return-void
.end method

.method public _comparePosition(Lorg/apache/xmlbeans/impl/store/Cursor;)I
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    iget-object p1, p1, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cur;->comparePosition(Lorg/apache/xmlbeans/impl/store/Cur;)I

    move-result p0

    const/4 p1, 0x2

    if-eq p0, p1, :cond_0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cursors not in same document"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public _copyChars(ILorg/apache/xmlbeans/impl/store/Cursor;)I
    .locals 3

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->cchRight()I

    move-result v0

    if-lez v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    if-ltz p1, :cond_1

    if-le p1, v0, :cond_2

    :cond_1
    move p1, v0

    :cond_2
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-direct {p2, v0}, Lorg/apache/xmlbeans/impl/store/Cursor;->checkInsertionValidity(Lorg/apache/xmlbeans/impl/store/Cur;)V

    iget-object v0, p2, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v1, p1}, Lorg/apache/xmlbeans/impl/store/Cur;->getChars(I)Ljava/lang/Object;

    move-result-object p1

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    iget v2, v1, Lorg/apache/xmlbeans/impl/store/Cur;->_offSrc:I

    iget v1, v1, Lorg/apache/xmlbeans/impl/store/Cur;->_cchSrc:I

    invoke-virtual {v0, p1, v2, v1}, Lorg/apache/xmlbeans/impl/store/Cur;->insertChars(Ljava/lang/Object;II)V

    iget-object p1, p2, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    iget-object p2, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    iget p2, p2, Lorg/apache/xmlbeans/impl/store/Cur;->_cchSrc:I

    invoke-virtual {p1, p2}, Lorg/apache/xmlbeans/impl/store/Cur;->nextChars(I)I

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    iget p0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_cchSrc:I

    return p0

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public _copyXml(Lorg/apache/xmlbeans/impl/store/Cursor;)Z
    .locals 4

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-direct {p1, v0}, Lorg/apache/xmlbeans/impl/store/Cursor;->checkInsertionValidity(Lorg/apache/xmlbeans/impl/store/Cur;)V

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Cursor;->tempCur()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/store/Cur;->isText()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lorg/apache/xmlbeans/impl/store/Cur;->getChars(I)Ljava/lang/Object;

    move-result-object v2

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    iget v3, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_offSrc:I

    iget p0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_cchSrc:I

    invoke-virtual {v1, v2, v3, p0}, Lorg/apache/xmlbeans/impl/store/Cur;->insertChars(Ljava/lang/Object;II)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    iget-object v1, p1, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/store/Cur;->copyNode(Lorg/apache/xmlbeans/impl/store/Cur;)V

    :goto_0
    iget-object p0, p1, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cur;->moveToCur(Lorg/apache/xmlbeans/impl/store/Cur;)V

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V

    const/4 p0, 0x1

    return p0
.end method

.method public _copyXmlContents(Lorg/apache/xmlbeans/impl/store/Cursor;)Z
    .locals 3

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->isContainer()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    iget-object v2, p1, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v0, v2}, Lorg/apache/xmlbeans/impl/store/Cur;->contains(Lorg/apache/xmlbeans/impl/store/Cur;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cursor;->checkContentInsertionValidity(Lorg/apache/xmlbeans/impl/store/Cursor;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->tempCur()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object v0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cur;->copyNode(Lorg/apache/xmlbeans/impl/store/Cur;)V

    iget-object p0, p1, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->tempCur()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object p0

    iget-object v2, p1, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v0, v2, v1}, Lorg/apache/xmlbeans/impl/store/Cur;->moveNodeContents(Lorg/apache/xmlbeans/impl/store/Cur;Z)V

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V

    iget-object p1, p1, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {p1, p0}, Lorg/apache/xmlbeans/impl/store/Cur;->moveToCur(Lorg/apache/xmlbeans/impl/store/Cur;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method public _currentTokenType()Lorg/apache/xmlbeans/XmlCursor$TokenType;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->kind()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :pswitch_0
    sget-object p0, Lorg/apache/xmlbeans/XmlCursor$TokenType;->PROCINST:Lorg/apache/xmlbeans/XmlCursor$TokenType;

    return-object p0

    :pswitch_1
    sget-object p0, Lorg/apache/xmlbeans/XmlCursor$TokenType;->COMMENT:Lorg/apache/xmlbeans/XmlCursor$TokenType;

    return-object p0

    :pswitch_2
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isXmlns()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lorg/apache/xmlbeans/XmlCursor$TokenType;->NAMESPACE:Lorg/apache/xmlbeans/XmlCursor$TokenType;

    goto :goto_0

    :cond_0
    sget-object p0, Lorg/apache/xmlbeans/XmlCursor$TokenType;->ATTR:Lorg/apache/xmlbeans/XmlCursor$TokenType;

    :goto_0
    return-object p0

    :pswitch_3
    sget-object p0, Lorg/apache/xmlbeans/XmlCursor$TokenType;->START:Lorg/apache/xmlbeans/XmlCursor$TokenType;

    return-object p0

    :pswitch_4
    sget-object p0, Lorg/apache/xmlbeans/XmlCursor$TokenType;->STARTDOC:Lorg/apache/xmlbeans/XmlCursor$TokenType;

    return-object p0

    :pswitch_5
    sget-object p0, Lorg/apache/xmlbeans/XmlCursor$TokenType;->TEXT:Lorg/apache/xmlbeans/XmlCursor$TokenType;

    return-object p0

    :pswitch_6
    sget-object p0, Lorg/apache/xmlbeans/XmlCursor$TokenType;->ENDDOC:Lorg/apache/xmlbeans/XmlCursor$TokenType;

    return-object p0

    :pswitch_7
    sget-object p0, Lorg/apache/xmlbeans/XmlCursor$TokenType;->END:Lorg/apache/xmlbeans/XmlCursor$TokenType;

    return-object p0

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public _dispose()V
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    return-void
.end method

.method public _documentProperties()Lorg/apache/xmlbeans/XmlDocumentProperties;
    .locals 1

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/apache/xmlbeans/impl/store/Locale;->getDocProps(Lorg/apache/xmlbeans/impl/store/Cur;Z)Lorg/apache/xmlbeans/XmlDocumentProperties;

    move-result-object p0

    return-object p0
.end method

.method public _dump()V
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->dump()V

    return-void
.end method

.method public _execQuery(Ljava/lang/String;)Lorg/apache/xmlbeans/XmlCursor;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lorg/apache/xmlbeans/impl/store/Cursor;->_execQuery(Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlCursor;

    move-result-object p0

    return-object p0
.end method

.method public _execQuery(Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlCursor;
    .locals 0

    .line 2
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/store/Cursor;->checkThisCursor()V

    .line 3
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/xpath/XPathFactory;->cursorExecQuery(Lorg/apache/xmlbeans/impl/store/Cur;Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlCursor;

    move-result-object p0

    return-object p0
.end method

.method public _getAllBookmarkRefs(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_bookmarks:Lorg/apache/xmlbeans/impl/store/Bookmark;

    :goto_0
    if-eqz p0, :cond_1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Bookmark;->_value:Ljava/lang/Object;

    instance-of v1, v0, Lorg/apache/xmlbeans/XmlCursor$XmlBookmark;

    if-eqz v1, :cond_0

    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Bookmark;->_next:Lorg/apache/xmlbeans/impl/store/Bookmark;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public _getAllNamespaces(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->isContainer()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/Locale;->getAllNamespaces(Lorg/apache/xmlbeans/impl/store/Cur;Ljava/util/Map;)Ljava/util/Map;

    :cond_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Not on a container"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public _getAttributeText(Ljavax/xml/namespace/QName;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->isContainer()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cur;->getAttrValue(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Attr name is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public _getBookmark(Ljava/lang/Object;)Lorg/apache/xmlbeans/XmlCursor$XmlBookmark;
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-static {p1, p0}, Lorg/apache/xmlbeans/impl/store/Cursor;->getBookmark(Ljava/lang/Object;Lorg/apache/xmlbeans/impl/store/Cur;)Lorg/apache/xmlbeans/XmlCursor$XmlBookmark;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public _getChars([CII)I
    .locals 2

    .line 2
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->cchRight()I

    move-result v0

    if-ltz p3, :cond_0

    if-le p3, v0, :cond_1

    :cond_0
    move p3, v0

    :cond_1
    if-eqz p1, :cond_4

    .line 3
    array-length v0, p1

    if-lt p2, v0, :cond_2

    goto :goto_0

    .line 4
    :cond_2
    array-length v0, p1

    sub-int/2addr v0, p2

    if-ge v0, p3, :cond_3

    .line 5
    array-length p3, p1

    sub-int/2addr p3, p2

    .line 6
    :cond_3
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v0, p3}, Lorg/apache/xmlbeans/impl/store/Cur;->getChars(I)Ljava/lang/Object;

    move-result-object p3

    .line 7
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    iget v1, v0, Lorg/apache/xmlbeans/impl/store/Cur;->_offSrc:I

    iget v0, v0, Lorg/apache/xmlbeans/impl/store/Cur;->_cchSrc:I

    invoke-static {p1, p2, p3, v1, v0}, Lorg/apache/xmlbeans/impl/store/CharUtil;->getChars([CILjava/lang/Object;II)V

    .line 8
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    iget p0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_cchSrc:I

    return p0

    :cond_4
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public _getChars()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->getCharsAsString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public _getDocChangeStamp()Lorg/apache/xmlbeans/XmlCursor$ChangeStamp;
    .locals 1

    new-instance v0, Lorg/apache/xmlbeans/impl/store/Cursor$ChangeStampImpl;

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-direct {v0, p0}, Lorg/apache/xmlbeans/impl/store/Cursor$ChangeStampImpl;-><init>(Lorg/apache/xmlbeans/impl/store/Locale;)V

    return-object v0
.end method

.method public _getDomNode()Lorg/w3c/dom/Node;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->getDom()Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Node;

    return-object p0
.end method

.method public _getName()Ljavax/xml/namespace/QName;
    .locals 2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->kind()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->isXmlns()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->getXmlnsUri()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->getXmlnsPrefix()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Lorg/apache/xmlbeans/impl/store/Locale;->makeQNameNoCheck(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->getName()Ljavax/xml/namespace/QName;

    move-result-object p0

    return-object p0
.end method

.method public _getObject()Lorg/apache/xmlbeans/XmlObject;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->getObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object p0

    return-object p0
.end method

.method public _getSelectionCount()I
    .locals 1

    const v0, 0x7fffffff

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cursor;->_toSelection(I)Z

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->selectionCount()I

    move-result p0

    return p0
.end method

.method public _getTextValue([CII)I
    .locals 3

    .line 6
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->isText()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/xmlbeans/impl/store/Cursor;->_getChars([CII)I

    move-result p0

    return p0

    :cond_0
    if-eqz p1, :cond_9

    if-ltz p2, :cond_8

    .line 8
    array-length v0, p1

    if-ge p2, v0, :cond_7

    if-gez p3, :cond_1

    const p3, 0x7fffffff

    :cond_1
    add-int v0, p2, p3

    .line 9
    array-length v1, p1

    if-le v0, v1, :cond_2

    .line 10
    array-length p3, p1

    sub-int/2addr p3, p2

    .line 11
    :cond_2
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->isNode()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 12
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->hasChildren()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 13
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-static {p0, p1, p2, p3}, Lorg/apache/xmlbeans/impl/store/Locale;->getTextValue(Lorg/apache/xmlbeans/impl/store/Cur;[CII)I

    move-result p0

    return p0

    .line 14
    :cond_3
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->getFirstChars()Ljava/lang/Object;

    move-result-object v0

    .line 15
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    iget v2, v1, Lorg/apache/xmlbeans/impl/store/Cur;->_cchSrc:I

    if-le v2, p3, :cond_4

    .line 16
    iput p3, v1, Lorg/apache/xmlbeans/impl/store/Cur;->_cchSrc:I

    .line 17
    :cond_4
    iget p3, v1, Lorg/apache/xmlbeans/impl/store/Cur;->_cchSrc:I

    if-gtz p3, :cond_5

    const/4 p0, 0x0

    return p0

    .line 18
    :cond_5
    iget v1, v1, Lorg/apache/xmlbeans/impl/store/Cur;->_offSrc:I

    invoke-static {p1, p2, v0, v1, p3}, Lorg/apache/xmlbeans/impl/store/CharUtil;->getChars([CILjava/lang/Object;II)V

    .line 19
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    iget p0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_cchSrc:I

    return p0

    .line 20
    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Can\'t get text value, current token can have no text value"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 21
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "offset off end"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 22
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "offset < 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 23
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "char buffer is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public _getTextValue()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->isText()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cursor;->_getChars()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->isNode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->hasChildren()Z

    move-result v0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    if-eqz v0, :cond_1

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->getTextValue(Lorg/apache/xmlbeans/impl/store/Cur;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->getValueAsString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0

    .line 5
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Can\'t get text value, current token can have no text value"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public _hasNextSelection()Z
    .locals 2

    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_currentSelection:I

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cursor;->push()V

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cursor;->_toNextSelection()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput v0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_currentSelection:I

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cursor;->pop()Z

    return v1

    :catchall_0
    move-exception v1

    iput v0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_currentSelection:I

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cursor;->pop()Z

    throw v1
.end method

.method public _hasNextToken()Z
    .locals 3

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_pos:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->kind()I

    move-result p0

    if-eq p0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    return v2
.end method

.method public _hasPrevToken()Z
    .locals 1

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->kind()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public _insertAttribute(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lorg/apache/xmlbeans/impl/store/Cursor;->_insertAttributeWithValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public _insertAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/xmlbeans/impl/store/Cursor;->_insertAttributeWithValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public _insertAttribute(Ljavax/xml/namespace/QName;)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, v0}, Lorg/apache/xmlbeans/impl/store/Cursor;->_insertAttributeWithValue(Ljavax/xml/namespace/QName;Ljava/lang/String;)V

    return-void
.end method

.method public _insertAttributeWithValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, p2}, Lorg/apache/xmlbeans/impl/store/Cursor;->_insertAttributeWithValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public _insertAttributeWithValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 2
    invoke-static {p1}, Lorg/apache/xmlbeans/impl/store/Cursor;->validateLocalName(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {v0, p2, p1}, Lorg/apache/xmlbeans/impl/store/Locale;->makeQName(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lorg/apache/xmlbeans/impl/store/Cursor;->_insertAttributeWithValue(Ljavax/xml/namespace/QName;Ljava/lang/String;)V

    return-void
.end method

.method public _insertAttributeWithValue(Ljavax/xml/namespace/QName;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/store/Cursor;->validateLocalName(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->tempCur()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object v0

    .line 6
    invoke-virtual {v0, p1}, Lorg/apache/xmlbeans/impl/store/Cur;->createAttr(Ljavax/xml/namespace/QName;)V

    .line 7
    invoke-direct {p0, v0, p2}, Lorg/apache/xmlbeans/impl/store/Cursor;->insertNode(Lorg/apache/xmlbeans/impl/store/Cur;Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V

    return-void

    .line 9
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "QName must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public _insertChars(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    :goto_0
    if-lez v1, :cond_2

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/store/Cur;->isRoot()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/store/Cur;->isAttr()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v2, p1, v0, v1}, Lorg/apache/xmlbeans/impl/store/Cur;->insertChars(Ljava/lang/Object;II)V

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/store/Cur;->nextChars(I)I

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Can\'t insert before the document or an attribute."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_1
    return-void
.end method

.method public _insertComment(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->tempCur()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->createComment()V

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/impl/store/Cursor;->insertNode(Lorg/apache/xmlbeans/impl/store/Cur;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V

    return-void
.end method

.method public _insertElement(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, v0}, Lorg/apache/xmlbeans/impl/store/Cursor;->_insertElementWithText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public _insertElement(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/xmlbeans/impl/store/Cursor;->_insertElementWithText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public _insertElement(Ljavax/xml/namespace/QName;)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, v0}, Lorg/apache/xmlbeans/impl/store/Cursor;->_insertElementWithText(Ljavax/xml/namespace/QName;Ljava/lang/String;)V

    return-void
.end method

.method public _insertElementWithText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, p2}, Lorg/apache/xmlbeans/impl/store/Cursor;->_insertElementWithText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public _insertElementWithText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 2
    invoke-static {p1}, Lorg/apache/xmlbeans/impl/store/Cursor;->validateLocalName(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {v0, p2, p1}, Lorg/apache/xmlbeans/impl/store/Locale;->makeQName(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lorg/apache/xmlbeans/impl/store/Cursor;->_insertElementWithText(Ljavax/xml/namespace/QName;Ljava/lang/String;)V

    return-void
.end method

.method public _insertElementWithText(Ljavax/xml/namespace/QName;Ljava/lang/String;)V
    .locals 1

    .line 4
    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/store/Cursor;->validateLocalName(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->tempCur()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object v0

    .line 6
    invoke-virtual {v0, p1}, Lorg/apache/xmlbeans/impl/store/Cur;->createElement(Ljavax/xml/namespace/QName;)V

    .line 7
    invoke-direct {p0, v0, p2}, Lorg/apache/xmlbeans/impl/store/Cursor;->insertNode(Lorg/apache/xmlbeans/impl/store/Cur;Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V

    return-void
.end method

.method public _insertNamespace(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {v0, p1}, Lorg/apache/xmlbeans/impl/store/Locale;->createXmlns(Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/Cursor;->_insertAttributeWithValue(Ljavax/xml/namespace/QName;Ljava/lang/String;)V

    return-void
.end method

.method public _insertProcInst(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/store/Cursor;->validateLocalName(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/store/Locale;->beginsWithXml(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Target is \'xml\'"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->tempCur()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/xmlbeans/impl/store/Cur;->createProcinst(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Lorg/apache/xmlbeans/impl/store/Cursor;->insertNode(Lorg/apache/xmlbeans/impl/store/Cur;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V

    return-void
.end method

.method public _isAnyAttr()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isAttr()Z

    move-result p0

    return p0
.end method

.method public _isAtSamePositionAs(Lorg/apache/xmlbeans/impl/store/Cursor;)Z
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    iget-object p1, p1, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cur;->isSamePos(Lorg/apache/xmlbeans/impl/store/Cur;)Z

    move-result p0

    return p0
.end method

.method public _isAttr()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isNormalAttr()Z

    move-result p0

    return p0
.end method

.method public _isComment()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isComment()Z

    move-result p0

    return p0
.end method

.method public _isContainer()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isContainer()Z

    move-result p0

    return p0
.end method

.method public _isEnd()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isEnd()Z

    move-result p0

    return p0
.end method

.method public _isEnddoc()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isEndRoot()Z

    move-result p0

    return p0
.end method

.method public _isFinish()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isFinish()Z

    move-result p0

    return p0
.end method

.method public _isLeftOf(Lorg/apache/xmlbeans/impl/store/Cursor;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cursor;->_comparePosition(Lorg/apache/xmlbeans/impl/store/Cursor;)I

    move-result p0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public _isNamespace()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isXmlns()Z

    move-result p0

    return p0
.end method

.method public _isProcinst()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isProcinst()Z

    move-result p0

    return p0
.end method

.method public _isRightOf(Lorg/apache/xmlbeans/impl/store/Cursor;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cursor;->_comparePosition(Lorg/apache/xmlbeans/impl/store/Cursor;)I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public _isStart()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isElem()Z

    move-result p0

    return p0
.end method

.method public _isStartdoc()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isRoot()Z

    move-result p0

    return p0
.end method

.method public _isText()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isText()Z

    move-result p0

    return p0
.end method

.method public _monitor()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    return-object p0
.end method

.method public _moveChars(ILorg/apache/xmlbeans/impl/store/Cursor;)I
    .locals 2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->cchRight()I

    move-result v0

    if-lez v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    if-ltz p1, :cond_1

    if-le p1, v0, :cond_2

    :cond_1
    move p1, v0

    :cond_2
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-direct {p2, v0}, Lorg/apache/xmlbeans/impl/store/Cursor;->checkInsertionValidity(Lorg/apache/xmlbeans/impl/store/Cur;)V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    iget-object v1, p2, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v0, v1, p1}, Lorg/apache/xmlbeans/impl/store/Cur;->moveChars(Lorg/apache/xmlbeans/impl/store/Cur;I)Ljava/lang/Object;

    iget-object p1, p2, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    iget-object p2, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    iget p2, p2, Lorg/apache/xmlbeans/impl/store/Cur;->_cchSrc:I

    invoke-virtual {p1, p2}, Lorg/apache/xmlbeans/impl/store/Cur;->nextChars(I)I

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    iget p0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_cchSrc:I

    return p0

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public _moveXml(Lorg/apache/xmlbeans/impl/store/Cursor;)Z
    .locals 5

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-direct {p1, v0}, Lorg/apache/xmlbeans/impl/store/Cursor;->checkInsertionValidity(Lorg/apache/xmlbeans/impl/store/Cur;)V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->isText()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->cchRight()I

    move-result v0

    iget-object v3, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    iget-object v4, p1, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v3, v4, v0, v2}, Lorg/apache/xmlbeans/impl/store/Cur;->inChars(Lorg/apache/xmlbeans/impl/store/Cur;IZ)Z

    move-result v3

    if-eqz v3, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    iget-object v1, p1, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {p0, v1, v0}, Lorg/apache/xmlbeans/impl/store/Cur;->moveChars(Lorg/apache/xmlbeans/impl/store/Cur;I)Ljava/lang/Object;

    iget-object p0, p1, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cur;->nextChars(I)I

    return v2

    :cond_1
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    iget-object v3, p1, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v0, v3}, Lorg/apache/xmlbeans/impl/store/Cur;->contains(Lorg/apache/xmlbeans/impl/store/Cur;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Cursor;->tempCur()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object v0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    iget-object v1, p1, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/store/Cur;->moveNode(Lorg/apache/xmlbeans/impl/store/Cur;)V

    iget-object p0, p1, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cur;->moveToCur(Lorg/apache/xmlbeans/impl/store/Cur;)V

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V

    return v2
.end method

.method public _moveXmlContents(Lorg/apache/xmlbeans/impl/store/Cursor;)Z
    .locals 3

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->isContainer()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    iget-object v2, p1, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v0, v2}, Lorg/apache/xmlbeans/impl/store/Cur;->contains(Lorg/apache/xmlbeans/impl/store/Cur;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cursor;->checkContentInsertionValidity(Lorg/apache/xmlbeans/impl/store/Cursor;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Cursor;->tempCur()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object v0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    iget-object v2, p1, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {p0, v2, v1}, Lorg/apache/xmlbeans/impl/store/Cur;->moveNodeContents(Lorg/apache/xmlbeans/impl/store/Cur;Z)V

    iget-object p0, p1, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cur;->moveToCur(Lorg/apache/xmlbeans/impl/store/Cur;)V

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method public _namespaceForPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->isContainer()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/xmlbeans/impl/store/Cur;->namespaceForPrefix(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Not on a container"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public _newCursor()Lorg/apache/xmlbeans/XmlCursor;
    .locals 1

    new-instance v0, Lorg/apache/xmlbeans/impl/store/Cursor;

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-direct {v0, p0}, Lorg/apache/xmlbeans/impl/store/Cursor;-><init>(Lorg/apache/xmlbeans/impl/store/Cur;)V

    return-object v0
.end method

.method public _newDomNode()Lorg/w3c/dom/Node;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cursor;->_newDomNode(Lorg/apache/xmlbeans/XmlOptions;)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0
.end method

.method public _newDomNode(Lorg/apache/xmlbeans/XmlOptions;)Lorg/w3c/dom/Node;
    .locals 2

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lorg/apache/xmlbeans/XmlOptions;->isSaveInner()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lorg/apache/xmlbeans/XmlOptions;

    invoke-direct {v0, p1}, Lorg/apache/xmlbeans/XmlOptions;-><init>(Lorg/apache/xmlbeans/XmlOptions;)V

    const/4 p1, 0x0

    .line 4
    invoke-virtual {v0, p1}, Lorg/apache/xmlbeans/XmlOptions;->setSaveInner(Z)Lorg/apache/xmlbeans/XmlOptions;

    move-object p1, v0

    .line 5
    :cond_0
    new-instance v0, Lorg/apache/xmlbeans/impl/store/DomSaver;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/store/Cursor;->isDomFragment()Z

    move-result p0

    invoke-direct {v0, v1, p0, p1}, Lorg/apache/xmlbeans/impl/store/DomSaver;-><init>(Lorg/apache/xmlbeans/impl/store/Cur;ZLorg/apache/xmlbeans/XmlOptions;)V

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/DomSaver;->saveDom()Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0
.end method

.method public _newInputStream()Ljava/io/InputStream;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cursor;->_newInputStream(Lorg/apache/xmlbeans/XmlOptions;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public _newInputStream(Lorg/apache/xmlbeans/XmlOptions;)Ljava/io/InputStream;
    .locals 1

    .line 2
    new-instance v0, Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver;

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-direct {v0, p0, p1}, Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver;-><init>(Lorg/apache/xmlbeans/impl/store/Cur;Lorg/apache/xmlbeans/XmlOptions;)V

    return-object v0
.end method

.method public _newReader()Ljava/io/Reader;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cursor;->_newReader(Lorg/apache/xmlbeans/XmlOptions;)Ljava/io/Reader;

    move-result-object p0

    return-object p0
.end method

.method public _newReader(Lorg/apache/xmlbeans/XmlOptions;)Ljava/io/Reader;
    .locals 1

    .line 2
    new-instance v0, Lorg/apache/xmlbeans/impl/store/Saver$TextReader;

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-direct {v0, p0, p1}, Lorg/apache/xmlbeans/impl/store/Saver$TextReader;-><init>(Lorg/apache/xmlbeans/impl/store/Cur;Lorg/apache/xmlbeans/XmlOptions;)V

    return-object v0
.end method

.method public _newXMLStreamReader()Ljavax/xml/stream/XMLStreamReader;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cursor;->_newXMLStreamReader(Lorg/apache/xmlbeans/XmlOptions;)Ljavax/xml/stream/XMLStreamReader;

    move-result-object p0

    return-object p0
.end method

.method public _newXMLStreamReader(Lorg/apache/xmlbeans/XmlOptions;)Ljavax/xml/stream/XMLStreamReader;
    .locals 0

    .line 2
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/Jsr173;->newXmlStreamReader(Lorg/apache/xmlbeans/impl/store/Cur;Lorg/apache/xmlbeans/XmlOptions;)Ljavax/xml/stream/XMLStreamReader;

    move-result-object p0

    return-object p0
.end method

.method public _pop()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->pop()Z

    move-result p0

    return p0
.end method

.method public _prefixForNamespace(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/xmlbeans/impl/store/Cur;->prefixForNamespace(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Must specify a namespace"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public _prevTokenType()Lorg/apache/xmlbeans/XmlCursor$TokenType;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->push()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cursor;->_toPrevToken()Lorg/apache/xmlbeans/XmlCursor$TokenType;

    move-result-object v0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->pop()Z

    return-object v0
.end method

.method public _push()V
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->push()V

    return-void
.end method

.method public _removeAttribute(Ljavax/xml/namespace/QName;)Z
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->isContainer()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cur;->removeAttr(Ljavax/xml/namespace/QName;)Z

    move-result p0

    return p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Attr name is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public _removeChars(I)I
    .locals 2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->cchRight()I

    move-result v0

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    if-ltz p1, :cond_1

    if-le p1, v0, :cond_2

    :cond_1
    move p1, v0

    :cond_2
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lorg/apache/xmlbeans/impl/store/Cur;->moveChars(Lorg/apache/xmlbeans/impl/store/Cur;I)Ljava/lang/Object;

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    iget p0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_cchSrc:I

    return p0

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public _removeXml()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->isRoot()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->isFinish()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->isText()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    const/4 v0, -0x1

    invoke-virtual {p0, v1, v0}, Lorg/apache/xmlbeans/impl/store/Cur;->moveChars(Lorg/apache/xmlbeans/impl/store/Cur;I)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/store/Cur;->moveNode(Lorg/apache/xmlbeans/impl/store/Cur;)V

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Can\'t remove a whole document."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public _removeXmlContents()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->isContainer()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/apache/xmlbeans/impl/store/Cur;->moveNodeContents(Lorg/apache/xmlbeans/impl/store/Cur;Z)V

    const/4 p0, 0x1

    return p0
.end method

.method public _save(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lorg/apache/xmlbeans/impl/store/Cursor;->_save(Ljava/io/File;Lorg/apache/xmlbeans/XmlOptions;)V

    return-void
.end method

.method public _save(Ljava/io/File;Lorg/apache/xmlbeans/XmlOptions;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 6
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 7
    :try_start_0
    invoke-virtual {p0, v0, p2}, Lorg/apache/xmlbeans/impl/store/Cursor;->_save(Ljava/io/OutputStream;Lorg/apache/xmlbeans/XmlOptions;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void

    :catchall_0
    move-exception p0

    .line 9
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    .line 10
    :try_start_2
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p2

    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1

    .line 11
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Null file specified"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public _save(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lorg/apache/xmlbeans/impl/store/Cursor;->_save(Ljava/io/OutputStream;Lorg/apache/xmlbeans/XmlOptions;)V

    return-void
.end method

.method public _save(Ljava/io/OutputStream;Lorg/apache/xmlbeans/XmlOptions;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 12
    invoke-virtual {p0, p2}, Lorg/apache/xmlbeans/impl/store/Cursor;->_newInputStream(Lorg/apache/xmlbeans/XmlOptions;)Ljava/io/InputStream;

    move-result-object p0

    const/16 p2, 0x2000

    :try_start_0
    new-array p2, p2, [B

    .line 13
    :goto_0
    invoke-virtual {p0, p2}, Ljava/io/InputStream;->read([B)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gez v0, :cond_0

    .line 14
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 15
    :try_start_1
    invoke-virtual {p1, p2, v1, v0}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 16
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz p0, :cond_1

    .line 17
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    throw p2

    .line 18
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Null OutputStream specified"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public _save(Ljava/io/Writer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, v0}, Lorg/apache/xmlbeans/impl/store/Cursor;->_save(Ljava/io/Writer;Lorg/apache/xmlbeans/XmlOptions;)V

    return-void
.end method

.method public _save(Ljava/io/Writer;Lorg/apache/xmlbeans/XmlOptions;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_3

    if-eqz p2, :cond_0

    .line 19
    invoke-virtual {p2}, Lorg/apache/xmlbeans/XmlOptions;->isSaveOptimizeForSpeed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/Saver$OptimizedForSpeedSaver;->save(Lorg/apache/xmlbeans/impl/store/Cur;Ljava/io/Writer;)V

    return-void

    .line 21
    :cond_0
    invoke-virtual {p0, p2}, Lorg/apache/xmlbeans/impl/store/Cursor;->_newReader(Lorg/apache/xmlbeans/XmlOptions;)Ljava/io/Reader;

    move-result-object p0

    const/16 p2, 0x2000

    :try_start_0
    new-array p2, p2, [C

    .line 22
    :goto_0
    invoke-virtual {p0, p2}, Ljava/io/Reader;->read([C)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gez v0, :cond_1

    .line 23
    invoke-virtual {p0}, Ljava/io/Reader;->close()V

    return-void

    :cond_1
    const/4 v1, 0x0

    .line 24
    :try_start_1
    invoke-virtual {p1, p2, v1, v0}, Ljava/io/Writer;->write([CII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 25
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz p0, :cond_2

    .line 26
    :try_start_3
    invoke-virtual {p0}, Ljava/io/Reader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw p2

    .line 27
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Null Writer specified"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public _save(Lorg/xml/sax/ContentHandler;Lorg/xml/sax/ext/LexicalHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/xmlbeans/impl/store/Cursor;->_save(Lorg/xml/sax/ContentHandler;Lorg/xml/sax/ext/LexicalHandler;Lorg/apache/xmlbeans/XmlOptions;)V

    return-void
.end method

.method public _save(Lorg/xml/sax/ContentHandler;Lorg/xml/sax/ext/LexicalHandler;Lorg/apache/xmlbeans/XmlOptions;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 5
    new-instance v0, Lorg/apache/xmlbeans/impl/store/Saver$SaxSaver;

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-direct {v0, p0, p3, p1, p2}, Lorg/apache/xmlbeans/impl/store/Saver$SaxSaver;-><init>(Lorg/apache/xmlbeans/impl/store/Cur;Lorg/apache/xmlbeans/XmlOptions;Lorg/xml/sax/ContentHandler;Lorg/xml/sax/ext/LexicalHandler;)V

    return-void
.end method

.method public _selectPath(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lorg/apache/xmlbeans/impl/store/Cursor;->_selectPath(Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions;)V

    return-void
.end method

.method public _selectPath(Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions;)V
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cursor;->_clearSelections()V

    .line 3
    invoke-static {p1, p2}, Lorg/apache/xmlbeans/impl/xpath/XPathFactory;->getCompiledPath(Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/impl/xpath/Path;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-interface {p1, v0, p2}, Lorg/apache/xmlbeans/impl/xpath/Path;->execute(Lorg/apache/xmlbeans/impl/store/Cur;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/impl/xpath/XPathEngine;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_pathEngine:Lorg/apache/xmlbeans/impl/xpath/XPathEngine;

    .line 4
    iget-object p1, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    iget-object p1, p1, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {p1, p0}, Lorg/apache/xmlbeans/impl/store/Locale;->registerForChange(Lorg/apache/xmlbeans/impl/store/Locale$ChangeListener;)V

    return-void
.end method

.method public _setAttributeText(Ljavax/xml/namespace/QName;Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/store/Cursor;->validateLocalName(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->isContainer()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/Cur;->setAttrValue(Ljavax/xml/namespace/QName;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Attr name is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public _setBookmark(Lorg/apache/xmlbeans/XmlCursor$XmlBookmark;)V
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/apache/xmlbeans/XmlCursor$XmlBookmark;->getKey()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/XmlCursor$XmlBookmark;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/apache/xmlbeans/impl/store/Cur;->setBookmark(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/xmlbeans/impl/store/Bookmark;

    move-result-object p0

    iput-object p0, p1, Lorg/apache/xmlbeans/XmlCursor$XmlBookmark;->_currentMark:Lorg/apache/xmlbeans/XmlCursor$XmlMark;

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Annotation key is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public _setName(Ljavax/xml/namespace/QName;)V
    .locals 2

    if-eqz p1, :cond_4

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->kind()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/store/Cursor;->validatePrefix(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Procinst name must have no prefix"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Procinst name must have no URI"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Can set name on element, atrtribute and procinst only"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/store/Cursor;->validateLocalName(Ljava/lang/String;)V

    :goto_0
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cur;->setName(Ljavax/xml/namespace/QName;)V

    return-void

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Name is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public _setTextValue(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    const-string p1, ""

    .line 1
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lorg/apache/xmlbeans/impl/store/Cursor;->setTextValue(Ljava/lang/Object;II)V

    return-void
.end method

.method public _setTextValue([CII)V
    .locals 2

    if-ltz p3, :cond_4

    if-nez p1, :cond_1

    if-gtz p3, :cond_0

    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, p2}, Lorg/apache/xmlbeans/impl/store/Cursor;->setTextValue([CII)V

    return-void

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "setTextValue: sourceChars == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    if-ltz p2, :cond_3

    .line 4
    array-length v0, p1

    if-ge p2, v0, :cond_3

    add-int v0, p2, p3

    .line 5
    array-length v1, p1

    if-le v0, v1, :cond_2

    .line 6
    array-length p3, p1

    sub-int/2addr p3, p2

    .line 7
    :cond_2
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->getCharUtil()Lorg/apache/xmlbeans/impl/store/CharUtil;

    move-result-object v0

    .line 8
    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/xmlbeans/impl/store/CharUtil;->saveChars(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object p1

    iget p2, v0, Lorg/apache/xmlbeans/impl/store/CharUtil;->_offSrc:I

    iget p3, v0, Lorg/apache/xmlbeans/impl/store/CharUtil;->_cchSrc:I

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/xmlbeans/impl/store/Cursor;->setTextValue(Ljava/lang/Object;II)V

    return-void

    .line 9
    :cond_3
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p1, "setTextValue: offset out of bounds"

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 10
    :cond_4
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p1, "setTextValue: length < 0"

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public _toBookmark(Lorg/apache/xmlbeans/XmlCursor$XmlBookmark;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-object p1, p1, Lorg/apache/xmlbeans/XmlCursor$XmlBookmark;->_currentMark:Lorg/apache/xmlbeans/XmlCursor$XmlMark;

    instance-of v1, p1, Lorg/apache/xmlbeans/impl/store/Bookmark;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lorg/apache/xmlbeans/impl/store/Bookmark;

    iget-object v1, p1, Lorg/apache/xmlbeans/impl/store/Bookmark;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    if-eqz v1, :cond_2

    iget-object v2, v1, Lorg/apache/xmlbeans/impl/store/Xobj;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    iget-object v3, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    iget p1, p1, Lorg/apache/xmlbeans/impl/store/Bookmark;->_pos:I

    invoke-virtual {p0, v1, p1}, Lorg/apache/xmlbeans/impl/store/Cur;->moveTo(Lorg/apache/xmlbeans/impl/store/Xobj;I)V

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v0
.end method

.method public _toChild(I)Z
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0, p1}, Lorg/apache/xmlbeans/impl/store/Cursor;->_toChild(Ljavax/xml/namespace/QName;I)Z

    move-result p0

    return p0
.end method

.method public _toChild(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, p1}, Lorg/apache/xmlbeans/impl/store/Cursor;->_toChild(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public _toChild(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 4
    invoke-static {p2}, Lorg/apache/xmlbeans/impl/store/Cursor;->validateLocalName(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {v0, p1, p2}, Lorg/apache/xmlbeans/impl/store/Locale;->makeQName(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/Cursor;->_toChild(Ljavax/xml/namespace/QName;I)Z

    move-result p0

    return p0
.end method

.method public _toChild(Ljavax/xml/namespace/QName;)Z
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lorg/apache/xmlbeans/impl/store/Cursor;->_toChild(Ljavax/xml/namespace/QName;I)Z

    move-result p0

    return p0
.end method

.method public _toChild(Ljavax/xml/namespace/QName;I)Z
    .locals 0

    .line 6
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/Locale;->toChild(Lorg/apache/xmlbeans/impl/store/Cur;Ljavax/xml/namespace/QName;I)Z

    move-result p0

    return p0
.end method

.method public _toCursor(Lorg/apache/xmlbeans/impl/store/Cursor;)Z
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    iget-object p1, p1, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cur;->moveToCur(Lorg/apache/xmlbeans/impl/store/Cur;)V

    const/4 p0, 0x1

    return p0
.end method

.method public _toEndDoc()V
    .locals 0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cursor;->_toStartDoc()V

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->toEnd()V

    return-void
.end method

.method public _toEndToken()Lorg/apache/xmlbeans/XmlCursor$TokenType;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->isContainer()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lorg/apache/xmlbeans/XmlCursor$TokenType;->NONE:Lorg/apache/xmlbeans/XmlCursor$TokenType;

    return-object p0

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->toEnd()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cursor;->currentTokenType()Lorg/apache/xmlbeans/XmlCursor$TokenType;

    move-result-object p0

    return-object p0
.end method

.method public _toFirstAttribute()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->isContainer()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->toFirstNormalAttr(Lorg/apache/xmlbeans/impl/store/Cur;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public _toFirstChild()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->toFirstChildElement(Lorg/apache/xmlbeans/impl/store/Cur;)Z

    move-result p0

    return p0
.end method

.method public _toFirstContentToken()Lorg/apache/xmlbeans/XmlCursor$TokenType;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->isContainer()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lorg/apache/xmlbeans/XmlCursor$TokenType;->NONE:Lorg/apache/xmlbeans/XmlCursor$TokenType;

    return-object p0

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->next()Z

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cursor;->currentTokenType()Lorg/apache/xmlbeans/XmlCursor$TokenType;

    move-result-object p0

    return-object p0
.end method

.method public _toLastAttribute()Z
    .locals 4

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->isContainer()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->push()V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->push()V

    move v0, v1

    :cond_0
    :goto_0
    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/store/Cur;->toNextAttr()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/store/Cur;->isNormalAttr()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->popButStay()V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->push()V

    move v0, v3

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/store/Cur;->pop()Z

    if-eqz v0, :cond_2

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->popButStay()V

    return v3

    :cond_2
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->pop()Z

    :cond_3
    return v1
.end method

.method public _toLastChild()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->toLastChildElement(Lorg/apache/xmlbeans/impl/store/Cur;)Z

    move-result p0

    return p0
.end method

.method public _toNextAttribute()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->isAttr()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->toNextNormalAttr(Lorg/apache/xmlbeans/impl/store/Cur;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public _toNextBookmark(Ljava/lang/Object;)Lorg/apache/xmlbeans/XmlCursor$XmlBookmark;
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/store/Cur;->push()V

    :cond_1
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/store/Cur;->cchRight()I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-le v1, v3, :cond_3

    iget-object v4, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v4, v3}, Lorg/apache/xmlbeans/impl/store/Cur;->nextChars(I)I

    iget-object v3, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v3, p1, v1}, Lorg/apache/xmlbeans/impl/store/Cur;->firstBookmarkInChars(Ljava/lang/Object;I)I

    move-result v1

    if-ltz v1, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    invoke-virtual {v3, v1}, Lorg/apache/xmlbeans/impl/store/Cur;->nextChars(I)I

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cursor;->_toNextToken()Lorg/apache/xmlbeans/XmlCursor$TokenType;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/xmlbeans/XmlCursor$TokenType;->isNone()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->pop()Z

    return-object v0

    :cond_4
    :goto_1
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-static {p1, v1}, Lorg/apache/xmlbeans/impl/store/Cursor;->getBookmark(Ljava/lang/Object;Lorg/apache/xmlbeans/impl/store/Cur;)Lorg/apache/xmlbeans/XmlCursor$XmlBookmark;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->popButStay()V

    return-object v1

    :cond_5
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/store/Cur;->kind()I

    move-result v1

    if-ne v1, v2, :cond_1

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->pop()Z

    return-object v0
.end method

.method public _toNextChar(I)I
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cur;->nextChars(I)I

    move-result p0

    return p0
.end method

.method public _toNextSelection()Z
    .locals 1

    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_currentSelection:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cursor;->_toSelection(I)Z

    move-result p0

    return p0
.end method

.method public _toNextSibling(Ljava/lang/String;)Z
    .locals 1

    .line 1
    new-instance v0, Ljavax/xml/namespace/QName;

    invoke-direct {v0, p1}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cursor;->_toNextSibling(Ljavax/xml/namespace/QName;)Z

    move-result p0

    return p0
.end method

.method public _toNextSibling(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 2
    invoke-static {p2}, Lorg/apache/xmlbeans/impl/store/Cursor;->validateLocalName(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_qnameFactory:Lorg/apache/xmlbeans/impl/store/QNameFactory;

    invoke-interface {v0, p1, p2}, Lorg/apache/xmlbeans/impl/store/QNameFactory;->getQName(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cursor;->_toNextSibling(Ljavax/xml/namespace/QName;)Z

    move-result p0

    return p0
.end method

.method public _toNextSibling(Ljavax/xml/namespace/QName;)Z
    .locals 1

    .line 4
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->push()V

    .line 5
    :cond_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cursor;->___toNextSibling()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->getName()Ljavax/xml/namespace/QName;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->popButStay()V

    const/4 p0, 0x1

    return p0

    .line 8
    :cond_1
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->pop()Z

    const/4 p0, 0x0

    return p0
.end method

.method public _toNextToken()Lorg/apache/xmlbeans/XmlCursor$TokenType;
    .locals 2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->kind()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->next()Z

    move-result v0

    if-nez v0, :cond_3

    sget-object p0, Lorg/apache/xmlbeans/XmlCursor$TokenType;->NONE:Lorg/apache/xmlbeans/XmlCursor$TokenType;

    return-object p0

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->skip()Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->toNextSibling()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->toParent()Z

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->next()Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->toFirstAttr()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->next()Z

    :cond_3
    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cursor;->_currentTokenType()Lorg/apache/xmlbeans/XmlCursor$TokenType;

    move-result-object p0

    return-object p0
.end method

.method public _toParent()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->tempCur()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->toParent()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cur;->moveToCur(Lorg/apache/xmlbeans/impl/store/Cur;)V

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V

    const/4 p0, 0x1

    return p0
.end method

.method public _toPrevAttribute()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->isAttr()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->toPrevNormalAttr(Lorg/apache/xmlbeans/impl/store/Cur;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public _toPrevBookmark(Ljava/lang/Object;)Lorg/apache/xmlbeans/XmlCursor$XmlBookmark;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/store/Cur;->push()V

    :cond_1
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/store/Cur;->cchLeft()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_3

    iget-object v3, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v3, v2}, Lorg/apache/xmlbeans/impl/store/Cur;->prevChars(I)I

    iget-object v3, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v3, p1, v1}, Lorg/apache/xmlbeans/impl/store/Cur;->firstBookmarkInCharsLeft(Ljava/lang/Object;I)I

    move-result v1

    if-ltz v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, -0x1

    :goto_0
    invoke-virtual {v3, v1}, Lorg/apache/xmlbeans/impl/store/Cur;->prevChars(I)I

    goto :goto_1

    :cond_3
    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v1, v2}, Lorg/apache/xmlbeans/impl/store/Cur;->prevChars(I)I

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cursor;->_toPrevToken()Lorg/apache/xmlbeans/XmlCursor$TokenType;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/xmlbeans/XmlCursor$TokenType;->isNone()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->pop()Z

    return-object v0

    :cond_5
    :goto_1
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-static {p1, v1}, Lorg/apache/xmlbeans/impl/store/Cursor;->getBookmark(Ljava/lang/Object;Lorg/apache/xmlbeans/impl/store/Cur;)Lorg/apache/xmlbeans/XmlCursor$XmlBookmark;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->popButStay()V

    return-object v1

    :cond_6
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/store/Cur;->kind()I

    move-result v1

    if-ne v1, v2, :cond_1

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->pop()Z

    return-object v0
.end method

.method public _toPrevChar(I)I
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cur;->prevChars(I)I

    move-result p0

    return p0
.end method

.method public _toPrevSibling()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->toPrevSiblingElement(Lorg/apache/xmlbeans/impl/store/Cur;)Z

    move-result p0

    return p0
.end method

.method public _toPrevToken()Lorg/apache/xmlbeans/XmlCursor$TokenType;
    .locals 3

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->isText()Z

    move-result v0

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/store/Cur;->prev()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->isRoot()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lorg/apache/xmlbeans/XmlCursor$TokenType;->NONE:Lorg/apache/xmlbeans/XmlCursor$TokenType;

    return-object p0

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->toParent()Z

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/store/Cur;->kind()I

    move-result v1

    const/4 v2, -0x4

    if-eq v1, v2, :cond_4

    const/4 v2, -0x5

    if-eq v1, v2, :cond_4

    const/4 v2, -0x3

    if-ne v1, v2, :cond_2

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/store/Cur;->isContainer()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->toLastAttr()Z

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->isText()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cursor;->_toPrevToken()Lorg/apache/xmlbeans/XmlCursor$TokenType;

    move-result-object p0

    return-object p0

    :cond_4
    :goto_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->toParent()Z

    :cond_5
    :goto_1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cursor;->_currentTokenType()Lorg/apache/xmlbeans/XmlCursor$TokenType;

    move-result-object p0

    return-object p0
.end method

.method public _toSelection(I)Z
    .locals 3

    const/4 v0, 0x0

    if-gez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/store/Cur;->selectionCount()I

    move-result v1

    if-lt p1, v1, :cond_2

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_pathEngine:Lorg/apache/xmlbeans/impl/xpath/XPathEngine;

    if-nez v1, :cond_1

    return v0

    :cond_1
    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/impl/xpath/XPathEngine;->next(Lorg/apache/xmlbeans/impl/store/Cur;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_pathEngine:Lorg/apache/xmlbeans/impl/xpath/XPathEngine;

    invoke-interface {p1}, Lorg/apache/xmlbeans/impl/xpath/XPathEngine;->release()V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_pathEngine:Lorg/apache/xmlbeans/impl/xpath/XPathEngine;

    return v0

    :cond_2
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    iput p1, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_currentSelection:I

    invoke-virtual {v0, p1}, Lorg/apache/xmlbeans/impl/store/Cur;->moveToSelection(I)V

    const/4 p0, 0x1

    return p0
.end method

.method public _toStartDoc()V
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->toRoot()V

    return-void
.end method

.method public _xmlText()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cursor;->_xmlText(Lorg/apache/xmlbeans/XmlOptions;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public _xmlText(Lorg/apache/xmlbeans/XmlOptions;)Ljava/lang/String;
    .locals 2

    .line 2
    new-instance v0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;-><init>(Lorg/apache/xmlbeans/impl/store/Cur;Lorg/apache/xmlbeans/XmlOptions;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->saveToString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public addToSelection()V
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/wje;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/wje;-><init>(Lorg/apache/xmlbeans/impl/store/Cursor;)V

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cursor;->syncWrap(Ljava/lang/Runnable;)V

    return-void
.end method

.method public beginElement(Ljava/lang/String;)V
    .locals 1

    .line 2
    new-instance v0, Lcom/sunia/HTREnginev2/nme;

    invoke-direct {v0, p0, p1}, Lcom/sunia/HTREnginev2/nme;-><init>(Lorg/apache/xmlbeans/impl/store/Cursor;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cursor;->syncWrap(Ljava/lang/Runnable;)V

    return-void
.end method

.method public beginElement(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 3
    new-instance v0, Lcom/sunia/HTREnginev2/rie;

    invoke-direct {v0, p0, p1, p2}, Lcom/sunia/HTREnginev2/rie;-><init>(Lorg/apache/xmlbeans/impl/store/Cursor;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cursor;->syncWrap(Ljava/lang/Runnable;)V

    return-void
.end method

.method public beginElement(Ljavax/xml/namespace/QName;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/sunia/HTREnginev2/tie;

    invoke-direct {v0, p0, p1}, Lcom/sunia/HTREnginev2/tie;-><init>(Lorg/apache/xmlbeans/impl/store/Cursor;Ljavax/xml/namespace/QName;)V

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cursor;->syncWrap(Ljava/lang/Runnable;)V

    return-void
.end method

.method public clearBookmark(Ljava/lang/Object;)V
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/zje;

    invoke-direct {v0, p0, p1}, Lcom/sunia/HTREnginev2/zje;-><init>(Lorg/apache/xmlbeans/impl/store/Cursor;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cursor;->syncWrap(Ljava/lang/Runnable;)V

    return-void
.end method

.method public clearSelections()V
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/wle;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/wle;-><init>(Lorg/apache/xmlbeans/impl/store/Cursor;)V

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cursor;->syncWrap(Ljava/lang/Runnable;)V

    return-void
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sunia/HTREnginev2/tje;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/tje;-><init>(Lorg/apache/xmlbeans/impl/store/Cursor;)V

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cursor;->syncWrap(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public comparePosition(Lorg/apache/xmlbeans/XmlCursor;)I
    .locals 1

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cursor;->preCheck(Lorg/apache/xmlbeans/XmlCursor;)Lorg/apache/xmlbeans/impl/store/Cursor;

    move-result-object p1

    new-instance v0, Lcom/sunia/HTREnginev2/qke;

    invoke-direct {v0, p0, p1}, Lcom/sunia/HTREnginev2/qke;-><init>(Lorg/apache/xmlbeans/impl/store/Cursor;Lorg/apache/xmlbeans/impl/store/Cursor;)V

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cursor;->syncWrap(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public copyChars(ILorg/apache/xmlbeans/XmlCursor;)I
    .locals 1

    const/4 v0, 0x5

    invoke-direct {p0, p2, v0, p1}, Lorg/apache/xmlbeans/impl/store/Cursor;->twoLocaleOp(Lorg/apache/xmlbeans/XmlCursor;II)I

    move-result p0

    return p0
.end method

.method public copyXml(Lorg/apache/xmlbeans/XmlCursor;)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/xmlbeans/impl/store/Cursor;->twoLocaleOp(Lorg/apache/xmlbeans/XmlCursor;II)I

    move-result p0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0
.end method

.method public copyXmlContents(Lorg/apache/xmlbeans/XmlCursor;)Z
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/xmlbeans/impl/store/Cursor;->twoLocaleOp(Lorg/apache/xmlbeans/XmlCursor;II)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    move v1, p1

    :cond_0
    return v1
.end method

.method public currentTokenType()Lorg/apache/xmlbeans/XmlCursor$TokenType;
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/gje;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/gje;-><init>(Lorg/apache/xmlbeans/impl/store/Cursor;)V

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cursor;->syncWrapNoEnter(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/XmlCursor$TokenType;

    return-object p0
.end method

.method public dispose()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cursor;->close()V

    return-void
.end method

.method public documentProperties()Lorg/apache/xmlbeans/XmlDocumentProperties;
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/cke;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/cke;-><init>(Lorg/apache/xmlbeans/impl/store/Cursor;)V

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cursor;->syncWrap(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/XmlDocumentProperties;

    return-object p0
.end method

.method public dump()V
    .locals 1

    .line 2
    new-instance v0, Lcom/sunia/HTREnginev2/ije;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/ije;-><init>(Lorg/apache/xmlbeans/impl/store/Cursor;)V

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cursor;->syncWrap(Ljava/lang/Runnable;)V

    return-void
.end method

.method public dump(Ljava/io/PrintStream;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cur;->dump(Ljava/io/PrintStream;)V

    return-void
.end method

.method public execQuery(Ljava/lang/String;)Lorg/apache/xmlbeans/XmlCursor;
    .locals 1

    .line 1
    new-instance v0, Lcom/sunia/HTREnginev2/zle;

    invoke-direct {v0, p0, p1}, Lcom/sunia/HTREnginev2/zle;-><init>(Lorg/apache/xmlbeans/impl/store/Cursor;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cursor;->syncWrap(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/XmlCursor;

    return-object p0
.end method

.method public execQuery(Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlCursor;
    .locals 1

    .line 2
    new-instance v0, Lcom/sunia/HTREnginev2/tke;

    invoke-direct {v0, p0, p1, p2}, Lcom/sunia/HTREnginev2/tke;-><init>(Lorg/apache/xmlbeans/impl/store/Cursor;Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions;)V

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cursor;->syncWrap(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/XmlCursor;

    return-object p0
.end method

.method public getAllBookmarkRefs(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/hje;

    invoke-direct {v0, p0, p1}, Lcom/sunia/HTREnginev2/hje;-><init>(Lorg/apache/xmlbeans/impl/store/Cursor;Ljava/util/Collection;)V

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cursor;->syncWrap(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getAllNamespaces(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/rje;

    invoke-direct {v0, p0, p1}, Lcom/sunia/HTREnginev2/rje;-><init>(Lorg/apache/xmlbeans/impl/store/Cursor;Ljava/util/Map;)V

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cursor;->syncWrap(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getAttributeText(Ljavax/xml/namespace/QName;)Ljava/lang/String;
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/uje;

    invoke-direct {v0, p0, p1}, Lcom/sunia/HTREnginev2/uje;-><init>(Lorg/apache/xmlbeans/impl/store/Cursor;Ljavax/xml/namespace/QName;)V

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cursor;->syncWrap(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getBookmark(Ljava/lang/Object;)Lorg/apache/xmlbeans/XmlCursor$XmlBookmark;
    .locals 1

    .line 3
    new-instance v0, Lcom/sunia/HTREnginev2/yie;

    invoke-direct {v0, p0, p1}, Lcom/sunia/HTREnginev2/yie;-><init>(Lorg/apache/xmlbeans/impl/store/Cursor;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cursor;->syncWrap(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/XmlCursor$XmlBookmark;

    return-object p0
.end method

.method public getChars([CII)I
    .locals 1

    .line 2
    new-instance v0, Lcom/sunia/HTREnginev2/fle;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/sunia/HTREnginev2/fle;-><init>(Lorg/apache/xmlbeans/impl/store/Cursor;[CII)V

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cursor;->syncWrap(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getChars()Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Lcom/sunia/HTREnginev2/ume;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/ume;-><init>(Lorg/apache/xmlbeans/impl/store/Cursor;)V

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cursor;->syncWrap(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getDocChangeStamp()Lorg/apache/xmlbeans/XmlCursor$ChangeStamp;
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/ome;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/ome;-><init>(Lorg/apache/xmlbeans/impl/store/Cursor;)V

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cursor;->syncWrap(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/XmlCursor$ChangeStamp;

    return-object p0
.end method

.method public getDomNode()Lorg/w3c/dom/Node;
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/ple;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/ple;-><init>(Lorg/apache/xmlbeans/impl/store/Cursor;)V

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cursor;->syncWrap(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Node;

    return-object p0
.end method

.method public getName()Ljavax/xml/namespace/QName;
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/uie;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/uie;-><init>(Lorg/apache/xmlbeans/impl/store/Cursor;)V

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cursor;->syncWrap(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljavax/xml/namespace/QName;

    return-object p0
.end method

.method public getNextChangeListener()Lorg/apache/xmlbeans/impl/store/Locale$ChangeListener;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_nextChangeListener:Lorg/apache/xmlbeans/impl/store/Locale$ChangeListener;

    return-object p0
.end method

.method public getObject()Lorg/apache/xmlbeans/XmlObject;
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/jle;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/jle;-><init>(Lorg/apache/xmlbeans/impl/store/Cursor;)V

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cursor;->syncWrap(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/XmlObject;

    return-object p0
.end method

.method public getSelectionCount()I
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/rme;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/rme;-><init>(Lorg/apache/xmlbeans/impl/store/Cursor;)V

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cursor;->syncWrap(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getTextValue([CII)I
    .locals 1

    .line 2
    new-instance v0, Lcom/sunia/HTREnginev2/sje;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/sunia/HTREnginev2/sje;-><init>(Lorg/apache/xmlbeans/impl/store/Cursor;[CII)V

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cursor;->syncWrap(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getTextValue()Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Lcom/sunia/HTREnginev2/oje;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/oje;-><init>(Lorg/apache/xmlbeans/impl/store/Cursor;)V

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cursor;->syncWrap(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public hasNextSelection()Z
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/ime;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/ime;-><init>(Lorg/apache/xmlbeans/impl/store/Cursor;)V

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cursor;->syncWrap(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public hasNextToken()Z
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/ole;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/ole;-><init>(Lorg/apache/xmlbeans/impl/store/Cursor;)V

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cursor;->syncWrapNoEnter(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public hasPrevToken()Z
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/lme;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/lme;-><init>(Lorg/apache/xmlbeans/impl/store/Cursor;)V

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cursor;->syncWrap(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public insertAttribute(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/sunia/HTREnginev2/wme;

    invoke-direct {v0, p0, p1}, Lcom/sunia/HTREnginev2/wme;-><init>(Lorg/apache/xmlbeans/impl/store/Cursor;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cursor;->syncWrap(Ljava/lang/Runnable;)V

    return-void
.end method

.method public insertAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 2
    new-instance v0, Lcom/sunia/HTREnginev2/dke;

    invoke-direct {v0, p0, p1, p2}, Lcom/sunia/HTREnginev2/dke;-><init>(Lorg/apache/xmlbeans/impl/store/Cursor;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cursor;->syncWrap(Ljava/lang/Runnable;)V

    return-void
.end method

.method public insertAttribute(Ljavax/xml/namespace/QName;)V
    .locals 1

    .line 3
    new-instance v0, Lcom/sunia/HTREnginev2/ake;

    invoke-direct {v0, p0, p1}, Lcom/sunia/HTREnginev2/ake;-><init>(Lorg/apache/xmlbeans/impl/store/Cursor;Ljavax/xml/namespace/QName;)V

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cursor;->syncWrap(Ljava/lang/Runnable;)V

    return-void
.end method

.method public insertAttributeWithValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/sunia/HTREnginev2/vje;

    invoke-direct {v0, p0, p1, p2}, Lcom/sunia/HTREnginev2/vje;-><init>(Lorg/apache/xmlbeans/impl/store/Cursor;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cursor;->syncWrap(Ljava/lang/Runnable;)V

    return-void
.end method

.method public insertAttributeWithValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 2
    new-instance v0, Lcom/sunia/HTREnginev2/eje;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/sunia/HTREnginev2/eje;-><init>(Lorg/apache/xmlbeans/impl/store/Cursor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cursor;->syncWrap(Ljava/lang/Runnable;)V

    return-void
.end method

.method public insertAttributeWithValue(Ljavax/xml/namespace/QName;Ljava/lang/String;)V
    .locals 1

    .line 3
    new-instance v0, Lcom/sunia/HTREnginev2/ile;

    invoke-direct {v0, p0, p1, p2}, Lcom/sunia/HTREnginev2/ile;-><init>(Lorg/apache/xmlbeans/impl/store/Cursor;Ljavax/xml/namespace/QName;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cursor;->syncWrap(Ljava/lang/Runnable;)V

    return-void
.end method

.method public insertChars(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/kle;

    invoke-direct {v0, p0, p1}, Lcom/sunia/HTREnginev2/kle;-><init>(Lorg/apache/xmlbeans/impl/store/Cursor;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cursor;->syncWrap(Ljava/lang/Runnable;)V

    return-void
.end method

.method public insertComment(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/xie;

    invoke-direct {v0, p0, p1}, Lcom/sunia/HTREnginev2/xie;-><init>(Lorg/apache/xmlbeans/impl/store/Cursor;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cursor;->syncWrap(Ljava/lang/Runnable;)V

    return-void
.end method

.method public insertElement(Ljava/lang/String;)V
    .locals 1

    .line 2
    new-instance v0, Lcom/sunia/HTREnginev2/ale;

    invoke-direct {v0, p0, p1}, Lcom/sunia/HTREnginev2/ale;-><init>(Lorg/apache/xmlbeans/impl/store/Cursor;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cursor;->syncWrap(Ljava/lang/Runnable;)V

    return-void
.end method

.method public insertElement(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 3
    new-instance v0, Lcom/sunia/HTREnginev2/ike;

    invoke-direct {v0, p0, p1, p2}, Lcom/sunia/HTREnginev2/ike;-><init>(Lorg/apache/xmlbeans/impl/store/Cursor;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cursor;->syncWrap(Ljava/lang/Runnable;)V

    return-void
.end method

.method public insertElement(Ljavax/xml/namespace/QName;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/sunia/HTREnginev2/bne;

    invoke-direct {v0, p0, p1}, Lcom/sunia/HTREnginev2/bne;-><init>(Lorg/apache/xmlbeans/impl/store/Cursor;Ljavax/xml/namespace/QName;)V

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cursor;->syncWrap(Ljava/lang/Runnable;)V

    return-void
.end method

.method public insertElementWithText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 2
    new-instance v0, Lcom/sunia/HTREnginev2/ule;

    invoke-direct {v0, p0, p1, p2}, Lcom/sunia/HTREnginev2/ule;-><init>(Lorg/apache/xmlbeans/impl/store/Cursor;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cursor;->syncWrap(Ljava/lang/Runnable;)V

    return-void
.end method

.method public insertElementWithText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 3
    new-instance v0, Lcom/sunia/HTREnginev2/dne;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/sunia/HTREnginev2/dne;-><init>(Lorg/apache/xmlbeans/impl/store/Cursor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cursor;->syncWrap(Ljava/lang/Runnable;)V

    return-void
.end method

.method public insertElementWithText(Ljavax/xml/namespace/QName;Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/sunia/HTREnginev2/xke;

    invoke-direct {v0, p0, p1, p2}, Lcom/sunia/HTREnginev2/xke;-><init>(Lorg/apache/xmlbeans/impl/store/Cursor;Ljavax/xml/namespace/QName;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cursor;->syncWrap(Ljava/lang/Runnable;)V

    return-void
.end method

.method public insertNamespace(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/sie;

    invoke-direct {v0, p0, p1, p2}, Lcom/sunia/HTREnginev2/sie;-><init>(Lorg/apache/xmlbeans/impl/store/Cursor;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cursor;->syncWrap(Ljava/lang/Runnable;)V

    return-void
.end method

.method public insertProcInst(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/fme;

    invoke-direct {v0, p0, p1, p2}, Lcom/sunia/HTREnginev2/fme;-><init>(Lorg/apache/xmlbeans/impl/store/Cursor;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cursor;->syncWrap(Ljava/lang/Runnable;)V

    return-void
.end method

.method public isAnyAttr()Z
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/mle;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/mle;-><init>(Lorg/apache/xmlbeans/impl/store/Cursor;)V

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cursor;->syncWrapNoEnter(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isAtSamePositionAs(Lorg/apache/xmlbeans/XmlCursor;)Z
    .locals 1

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cursor;->preCheck(Lorg/apache/xmlbeans/XmlCursor;)Lorg/apache/xmlbeans/impl/store/Cursor;

    move-result-object p1

    new-instance v0, Lcom/sunia/HTREnginev2/nje;

    invoke-direct {v0, p0, p1}, Lcom/sunia/HTREnginev2/nje;-><init>(Lorg/apache/xmlbeans/impl/store/Cursor;Lorg/apache/xmlbeans/impl/store/Cursor;)V

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cursor;->syncWrap(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isAttr()Z
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/vle;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/vle;-><init>(Lorg/apache/xmlbeans/impl/store/Cursor;)V

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cursor;->syncWrapNoEnter(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isComment()Z
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/cme;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/cme;-><init>(Lorg/apache/xmlbeans/impl/store/Cursor;)V

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cursor;->syncWrapNoEnter(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isContainer()Z
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/yle;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/yle;-><init>(Lorg/apache/xmlbeans/impl/store/Cursor;)V

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cursor;->syncWrapNoEnter(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isEnd()Z
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/wke;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/wke;-><init>(Lorg/apache/xmlbeans/impl/store/Cursor;)V

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cursor;->syncWrapNoEnter(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isEnddoc()Z
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/qle;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/qle;-><init>(Lorg/apache/xmlbeans/impl/store/Cursor;)V

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cursor;->syncWrapNoEnter(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isFinish()Z
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/cle;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/cle;-><init>(Lorg/apache/xmlbeans/impl/store/Cursor;)V

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cursor;->syncWrapNoEnter(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isInSameDocument(Lorg/apache/xmlbeans/XmlCursor;)Z
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cursor;->checkCursors(Lorg/apache/xmlbeans/XmlCursor;)Lorg/apache/xmlbeans/impl/store/Cursor;

    move-result-object p0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v0, p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isInSameTree(Lorg/apache/xmlbeans/impl/store/Cur;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isLeftOf(Lorg/apache/xmlbeans/XmlCursor;)Z
    .locals 1

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cursor;->preCheck(Lorg/apache/xmlbeans/XmlCursor;)Lorg/apache/xmlbeans/impl/store/Cursor;

    move-result-object p1

    new-instance v0, Lcom/sunia/HTREnginev2/fke;

    invoke-direct {v0, p0, p1}, Lcom/sunia/HTREnginev2/fke;-><init>(Lorg/apache/xmlbeans/impl/store/Cursor;Lorg/apache/xmlbeans/impl/store/Cursor;)V

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cursor;->syncWrap(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isNamespace()Z
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/mme;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/mme;-><init>(Lorg/apache/xmlbeans/impl/store/Cursor;)V

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cursor;->syncWrapNoEnter(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isProcinst()Z
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/yke;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/yke;-><init>(Lorg/apache/xmlbeans/impl/store/Cursor;)V

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cursor;->syncWrapNoEnter(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isRightOf(Lorg/apache/xmlbeans/XmlCursor;)Z
    .locals 1

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cursor;->preCheck(Lorg/apache/xmlbeans/XmlCursor;)Lorg/apache/xmlbeans/impl/store/Cursor;

    move-result-object p1

    new-instance v0, Lcom/sunia/HTREnginev2/xje;

    invoke-direct {v0, p0, p1}, Lcom/sunia/HTREnginev2/xje;-><init>(Lorg/apache/xmlbeans/impl/store/Cursor;Lorg/apache/xmlbeans/impl/store/Cursor;)V

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cursor;->syncWrap(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isStart()Z
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/sme;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/sme;-><init>(Lorg/apache/xmlbeans/impl/store/Cursor;)V

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cursor;->syncWrapNoEnter(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isStartdoc()Z
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/bke;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/bke;-><init>(Lorg/apache/xmlbeans/impl/store/Cursor;)V

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cursor;->syncWrapNoEnter(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isText()Z
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/jje;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/jje;-><init>(Lorg/apache/xmlbeans/impl/store/Cursor;)V

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cursor;->syncWrapNoEnter(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public locale()Lorg/apache/xmlbeans/impl/store/Locale;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    return-object p0
.end method

.method public monitor()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/lke;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/lke;-><init>(Lorg/apache/xmlbeans/impl/store/Cursor;)V

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cursor;->syncWrap(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public moveChars(ILorg/apache/xmlbeans/XmlCursor;)I
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, p2, v0, p1}, Lorg/apache/xmlbeans/impl/store/Cursor;->twoLocaleOp(Lorg/apache/xmlbeans/XmlCursor;II)I

    move-result p0

    return p0
.end method

.method public moveXml(Lorg/apache/xmlbeans/XmlCursor;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lorg/apache/xmlbeans/impl/store/Cursor;->twoLocaleOp(Lorg/apache/xmlbeans/XmlCursor;II)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    move v0, p1

    :cond_0
    return v0
.end method

.method public moveXmlContents(Lorg/apache/xmlbeans/XmlCursor;)Z
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/xmlbeans/impl/store/Cursor;->twoLocaleOp(Lorg/apache/xmlbeans/XmlCursor;II)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    move v1, p1

    :cond_0
    return v1
.end method

.method public namespaceForPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/sle;

    invoke-direct {v0, p0, p1}, Lcom/sunia/HTREnginev2/sle;-><init>(Lorg/apache/xmlbeans/impl/store/Cursor;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cursor;->syncWrap(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public newCursor()Lorg/apache/xmlbeans/XmlCursor;
    .locals 1

    .line 13
    new-instance v0, Lcom/sunia/HTREnginev2/gme;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/gme;-><init>(Lorg/apache/xmlbeans/impl/store/Cursor;)V

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cursor;->syncWrap(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/XmlCursor;

    return-object p0
.end method

.method public newDomNode()Lorg/w3c/dom/Node;
    .locals 1

    .line 1
    new-instance v0, Lcom/sunia/HTREnginev2/pke;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/pke;-><init>(Lorg/apache/xmlbeans/impl/store/Cursor;)V

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cursor;->syncWrap(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Node;

    return-object p0
.end method

.method public newDomNode(Lorg/apache/xmlbeans/XmlOptions;)Lorg/w3c/dom/Node;
    .locals 1

    .line 2
    new-instance v0, Lcom/sunia/HTREnginev2/fje;

    invoke-direct {v0, p0, p1}, Lcom/sunia/HTREnginev2/fje;-><init>(Lorg/apache/xmlbeans/impl/store/Cursor;Lorg/apache/xmlbeans/XmlOptions;)V

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cursor;->syncWrap(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Node;

    return-object p0
.end method

.method public newInputStream()Ljava/io/InputStream;
    .locals 1

    .line 1
    new-instance v0, Lcom/sunia/HTREnginev2/ane;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/ane;-><init>(Lorg/apache/xmlbeans/impl/store/Cursor;)V

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cursor;->syncWrap(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/InputStream;

    return-object p0
.end method

.method public newInputStream(Lorg/apache/xmlbeans/XmlOptions;)Ljava/io/InputStream;
    .locals 1

    .line 2
    new-instance v0, Lcom/sunia/HTREnginev2/pme;

    invoke-direct {v0, p0, p1}, Lcom/sunia/HTREnginev2/pme;-><init>(Lorg/apache/xmlbeans/impl/store/Cursor;Lorg/apache/xmlbeans/XmlOptions;)V

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cursor;->syncWrap(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/InputStream;

    return-object p0
.end method

.method public newReader()Ljava/io/Reader;
    .locals 1

    .line 1
    new-instance v0, Lcom/sunia/HTREnginev2/aje;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/aje;-><init>(Lorg/apache/xmlbeans/impl/store/Cursor;)V

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cursor;->syncWrap(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/Reader;

    return-object p0
.end method

.method public newReader(Lorg/apache/xmlbeans/XmlOptions;)Ljava/io/Reader;
    .locals 1

    .line 2
    new-instance v0, Lcom/sunia/HTREnginev2/bje;

    invoke-direct {v0, p0, p1}, Lcom/sunia/HTREnginev2/bje;-><init>(Lorg/apache/xmlbeans/impl/store/Cursor;Lorg/apache/xmlbeans/XmlOptions;)V

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cursor;->syncWrap(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/Reader;

    return-object p0
.end method

.method public newXMLStreamReader()Ljavax/xml/stream/XMLStreamReader;
    .locals 1

    .line 1
    new-instance v0, Lcom/sunia/HTREnginev2/jme;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/jme;-><init>(Lorg/apache/xmlbeans/impl/store/Cursor;)V

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cursor;->syncWrap(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljavax/xml/stream/XMLStreamReader;

    return-object p0
.end method

.method public newXMLStreamReader(Lorg/apache/xmlbeans/XmlOptions;)Ljavax/xml/stream/XMLStreamReader;
    .locals 1

    .line 2
    new-instance v0, Lcom/sunia/HTREnginev2/bme;

    invoke-direct {v0, p0, p1}, Lcom/sunia/HTREnginev2/bme;-><init>(Lorg/apache/xmlbeans/impl/store/Cursor;Lorg/apache/xmlbeans/XmlOptions;)V

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cursor;->syncWrap(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljavax/xml/stream/XMLStreamReader;

    return-object p0
.end method

.method public notifyChange()V
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cursor;->_getSelectionCount()I

    :cond_0
    return-void
.end method

.method public pop()Z
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/xme;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/xme;-><init>(Lorg/apache/xmlbeans/impl/store/Cursor;)V

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cursor;->syncWrap(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public prefixForNamespace(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/eke;

    invoke-direct {v0, p0, p1}, Lcom/sunia/HTREnginev2/eke;-><init>(Lorg/apache/xmlbeans/impl/store/Cursor;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cursor;->syncWrap(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public prevTokenType()Lorg/apache/xmlbeans/XmlCursor$TokenType;
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/uke;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/uke;-><init>(Lorg/apache/xmlbeans/impl/store/Cursor;)V

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cursor;->syncWrap(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/XmlCursor$TokenType;

    return-object p0
.end method

.method public push()V
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/dle;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/dle;-><init>(Lorg/apache/xmlbeans/impl/store/Cursor;)V

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cursor;->syncWrap(Ljava/lang/Runnable;)V

    return-void
.end method

.method public removeAttribute(Ljavax/xml/namespace/QName;)Z
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/yme;

    invoke-direct {v0, p0, p1}, Lcom/sunia/HTREnginev2/yme;-><init>(Lorg/apache/xmlbeans/impl/store/Cursor;Ljavax/xml/namespace/QName;)V

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cursor;->syncWrap(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public removeChars(I)I
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/ske;

    invoke-direct {v0, p0, p1}, Lcom/sunia/HTREnginev2/ske;-><init>(Lorg/apache/xmlbeans/impl/store/Cursor;I)V

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cursor;->syncWrap(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public removeXml()Z
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/ele;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/ele;-><init>(Lorg/apache/xmlbeans/impl/store/Cursor;)V

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cursor;->syncWrap(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public removeXmlContents()Z
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/lle;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/lle;-><init>(Lorg/apache/xmlbeans/impl/store/Cursor;)V

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cursor;->syncWrap(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public save(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/apache/xmlbeans/impl/store/c;

    invoke-direct {v0, p0, p1}, Lorg/apache/xmlbeans/impl/store/c;-><init>(Lorg/apache/xmlbeans/impl/store/Cursor;Ljava/io/File;)V

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cursor;->syncWrapIOEx(Lorg/apache/xmlbeans/impl/store/Cursor$WrapIOEx;)V

    return-void
.end method

.method public save(Ljava/io/File;Lorg/apache/xmlbeans/XmlOptions;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6
    new-instance v0, Lorg/apache/xmlbeans/impl/store/f;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/f;-><init>(Lorg/apache/xmlbeans/impl/store/Cursor;Ljava/io/File;Lorg/apache/xmlbeans/XmlOptions;)V

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cursor;->syncWrapIOEx(Lorg/apache/xmlbeans/impl/store/Cursor$WrapIOEx;)V

    return-void
.end method

.method public save(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    new-instance v0, Lorg/apache/xmlbeans/impl/store/a;

    invoke-direct {v0, p0, p1}, Lorg/apache/xmlbeans/impl/store/a;-><init>(Lorg/apache/xmlbeans/impl/store/Cursor;Ljava/io/OutputStream;)V

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cursor;->syncWrapIOEx(Lorg/apache/xmlbeans/impl/store/Cursor$WrapIOEx;)V

    return-void
.end method

.method public save(Ljava/io/OutputStream;Lorg/apache/xmlbeans/XmlOptions;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    new-instance v0, Lorg/apache/xmlbeans/impl/store/e;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/e;-><init>(Lorg/apache/xmlbeans/impl/store/Cursor;Ljava/io/OutputStream;Lorg/apache/xmlbeans/XmlOptions;)V

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cursor;->syncWrapIOEx(Lorg/apache/xmlbeans/impl/store/Cursor$WrapIOEx;)V

    return-void
.end method

.method public save(Ljava/io/Writer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    new-instance v0, Lorg/apache/xmlbeans/impl/store/d;

    invoke-direct {v0, p0, p1}, Lorg/apache/xmlbeans/impl/store/d;-><init>(Lorg/apache/xmlbeans/impl/store/Cursor;Ljava/io/Writer;)V

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cursor;->syncWrapIOEx(Lorg/apache/xmlbeans/impl/store/Cursor$WrapIOEx;)V

    return-void
.end method

.method public save(Ljava/io/Writer;Lorg/apache/xmlbeans/XmlOptions;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    new-instance v0, Lorg/apache/xmlbeans/impl/store/g;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/g;-><init>(Lorg/apache/xmlbeans/impl/store/Cursor;Ljava/io/Writer;Lorg/apache/xmlbeans/XmlOptions;)V

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cursor;->syncWrapIOEx(Lorg/apache/xmlbeans/impl/store/Cursor$WrapIOEx;)V

    return-void
.end method

.method public save(Lorg/xml/sax/ContentHandler;Lorg/xml/sax/ext/LexicalHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/xmlbeans/impl/store/b;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/b;-><init>(Lorg/apache/xmlbeans/impl/store/Cursor;Lorg/xml/sax/ContentHandler;Lorg/xml/sax/ext/LexicalHandler;)V

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cursor;->syncWrapSAXEx(Lorg/apache/xmlbeans/impl/store/Cursor$WrapSAXEx;)V

    return-void
.end method

.method public save(Lorg/xml/sax/ContentHandler;Lorg/xml/sax/ext/LexicalHandler;Lorg/apache/xmlbeans/XmlOptions;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 5
    new-instance v0, Lorg/apache/xmlbeans/impl/store/h;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/apache/xmlbeans/impl/store/h;-><init>(Lorg/apache/xmlbeans/impl/store/Cursor;Lorg/xml/sax/ContentHandler;Lorg/xml/sax/ext/LexicalHandler;Lorg/apache/xmlbeans/XmlOptions;)V

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cursor;->syncWrapSAXEx(Lorg/apache/xmlbeans/impl/store/Cursor$WrapSAXEx;)V

    return-void
.end method

.method public selectPath(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/sunia/HTREnginev2/nle;

    invoke-direct {v0, p0, p1}, Lcom/sunia/HTREnginev2/nle;-><init>(Lorg/apache/xmlbeans/impl/store/Cursor;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cursor;->syncWrap(Ljava/lang/Runnable;)V

    return-void
.end method

.method public selectPath(Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions;)V
    .locals 1

    .line 2
    new-instance v0, Lcom/sunia/HTREnginev2/oke;

    invoke-direct {v0, p0, p1, p2}, Lcom/sunia/HTREnginev2/oke;-><init>(Lorg/apache/xmlbeans/impl/store/Cursor;Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions;)V

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cursor;->syncWrap(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setAttributeText(Ljavax/xml/namespace/QName;Ljava/lang/String;)Z
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/wie;

    invoke-direct {v0, p0, p1, p2}, Lcom/sunia/HTREnginev2/wie;-><init>(Lorg/apache/xmlbeans/impl/store/Cursor;Ljavax/xml/namespace/QName;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cursor;->syncWrap(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public setBookmark(Lorg/apache/xmlbeans/XmlCursor$XmlBookmark;)V
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/vie;

    invoke-direct {v0, p0, p1}, Lcom/sunia/HTREnginev2/vie;-><init>(Lorg/apache/xmlbeans/impl/store/Cursor;Lorg/apache/xmlbeans/XmlCursor$XmlBookmark;)V

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cursor;->syncWrap(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setName(Ljavax/xml/namespace/QName;)V
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/tme;

    invoke-direct {v0, p0, p1}, Lcom/sunia/HTREnginev2/tme;-><init>(Lorg/apache/xmlbeans/impl/store/Cursor;Ljavax/xml/namespace/QName;)V

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cursor;->syncWrap(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setNextChangeListener(Lorg/apache/xmlbeans/impl/store/Locale$ChangeListener;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_nextChangeListener:Lorg/apache/xmlbeans/impl/store/Locale$ChangeListener;

    return-void
.end method

.method public setTextValue(Ljava/lang/String;)V
    .locals 1

    .line 7
    new-instance v0, Lcom/sunia/HTREnginev2/ame;

    invoke-direct {v0, p0, p1}, Lcom/sunia/HTREnginev2/ame;-><init>(Lorg/apache/xmlbeans/impl/store/Cursor;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cursor;->syncWrap(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setTextValue([CII)V
    .locals 1

    .line 8
    new-instance v0, Lcom/sunia/HTREnginev2/tle;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/sunia/HTREnginev2/tle;-><init>(Lorg/apache/xmlbeans/impl/store/Cursor;[CII)V

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cursor;->syncWrap(Ljava/lang/Runnable;)V

    return-void
.end method

.method public tempCur()Lorg/apache/xmlbeans/impl/store/Cur;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->tempCur()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object p0

    return-object p0
.end method

.method public toBookmark(Lorg/apache/xmlbeans/XmlCursor$XmlBookmark;)Z
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/vme;

    invoke-direct {v0, p0, p1}, Lcom/sunia/HTREnginev2/vme;-><init>(Lorg/apache/xmlbeans/impl/store/Cursor;Lorg/apache/xmlbeans/XmlCursor$XmlBookmark;)V

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cursor;->syncWrap(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public toChild(I)Z
    .locals 1

    .line 4
    new-instance v0, Lcom/sunia/HTREnginev2/pje;

    invoke-direct {v0, p0, p1}, Lcom/sunia/HTREnginev2/pje;-><init>(Lorg/apache/xmlbeans/impl/store/Cursor;I)V

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cursor;->syncWrap(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public toChild(Ljava/lang/String;)Z
    .locals 1

    .line 1
    new-instance v0, Lcom/sunia/HTREnginev2/kme;

    invoke-direct {v0, p0, p1}, Lcom/sunia/HTREnginev2/kme;-><init>(Lorg/apache/xmlbeans/impl/store/Cursor;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cursor;->syncWrap(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public toChild(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 2
    new-instance v0, Lcom/sunia/HTREnginev2/nke;

    invoke-direct {v0, p0, p1, p2}, Lcom/sunia/HTREnginev2/nke;-><init>(Lorg/apache/xmlbeans/impl/store/Cursor;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cursor;->syncWrap(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public toChild(Ljavax/xml/namespace/QName;)Z
    .locals 1

    .line 3
    new-instance v0, Lcom/sunia/HTREnginev2/hle;

    invoke-direct {v0, p0, p1}, Lcom/sunia/HTREnginev2/hle;-><init>(Lorg/apache/xmlbeans/impl/store/Cursor;Ljavax/xml/namespace/QName;)V

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cursor;->syncWrap(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public toChild(Ljavax/xml/namespace/QName;I)Z
    .locals 1

    .line 5
    new-instance v0, Lcom/sunia/HTREnginev2/hke;

    invoke-direct {v0, p0, p1, p2}, Lcom/sunia/HTREnginev2/hke;-><init>(Lorg/apache/xmlbeans/impl/store/Cursor;Ljavax/xml/namespace/QName;I)V

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cursor;->syncWrap(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public toCursor(Lorg/apache/xmlbeans/XmlCursor;)Z
    .locals 2

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cursor;->checkCursors(Lorg/apache/xmlbeans/XmlCursor;)Lorg/apache/xmlbeans/impl/store/Cursor;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    iget-object v1, p1, Lorg/apache/xmlbeans/impl/store/Cursor;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    iget-object v1, v1, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/sunia/HTREnginev2/gle;

    invoke-direct {v0, p0, p1}, Lcom/sunia/HTREnginev2/gle;-><init>(Lorg/apache/xmlbeans/impl/store/Cursor;Lorg/apache/xmlbeans/impl/store/Cursor;)V

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cursor;->syncWrap(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public toEndDoc()V
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/pie;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/pie;-><init>(Lorg/apache/xmlbeans/impl/store/Cursor;)V

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cursor;->syncWrapNoEnter(Ljava/lang/Runnable;)V

    return-void
.end method

.method public toEndToken()Lorg/apache/xmlbeans/XmlCursor$TokenType;
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/zme;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/zme;-><init>(Lorg/apache/xmlbeans/impl/store/Cursor;)V

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cursor;->syncWrap(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/XmlCursor$TokenType;

    return-object p0
.end method

.method public toFirstAttribute()Z
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/rle;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/rle;-><init>(Lorg/apache/xmlbeans/impl/store/Cursor;)V

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cursor;->syncWrapNoEnter(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public toFirstChild()Z
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/dje;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/dje;-><init>(Lorg/apache/xmlbeans/impl/store/Cursor;)V

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cursor;->syncWrapNoEnter(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public toFirstContentToken()Lorg/apache/xmlbeans/XmlCursor$TokenType;
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/eme;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/eme;-><init>(Lorg/apache/xmlbeans/impl/store/Cursor;)V

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cursor;->syncWrap(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/XmlCursor$TokenType;

    return-object p0
.end method

.method public toLastAttribute()Z
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/qje;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/qje;-><init>(Lorg/apache/xmlbeans/impl/store/Cursor;)V

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cursor;->syncWrap(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public toLastChild()Z
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/jke;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/jke;-><init>(Lorg/apache/xmlbeans/impl/store/Cursor;)V

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cursor;->syncWrap(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public toNextAttribute()Z
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/ene;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/ene;-><init>(Lorg/apache/xmlbeans/impl/store/Cursor;)V

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cursor;->syncWrap(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public toNextBookmark(Ljava/lang/Object;)Lorg/apache/xmlbeans/XmlCursor$XmlBookmark;
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/hme;

    invoke-direct {v0, p0, p1}, Lcom/sunia/HTREnginev2/hme;-><init>(Lorg/apache/xmlbeans/impl/store/Cursor;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cursor;->syncWrap(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/XmlCursor$XmlBookmark;

    return-object p0
.end method

.method public toNextChar(I)I
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/qie;

    invoke-direct {v0, p0, p1}, Lcom/sunia/HTREnginev2/qie;-><init>(Lorg/apache/xmlbeans/impl/store/Cursor;I)V

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cursor;->syncWrap(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public toNextSelection()Z
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/kke;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/kke;-><init>(Lorg/apache/xmlbeans/impl/store/Cursor;)V

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cursor;->syncWrap(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public toNextSibling()Z
    .locals 1

    .line 1
    new-instance v0, Lcom/sunia/HTREnginev2/dme;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/dme;-><init>(Lorg/apache/xmlbeans/impl/store/Cursor;)V

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cursor;->syncWrapNoEnter(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public toNextSibling(Ljava/lang/String;)Z
    .locals 1

    .line 2
    new-instance v0, Lcom/sunia/HTREnginev2/cje;

    invoke-direct {v0, p0, p1}, Lcom/sunia/HTREnginev2/cje;-><init>(Lorg/apache/xmlbeans/impl/store/Cursor;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cursor;->syncWrap(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public toNextSibling(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 3
    new-instance v0, Lcom/sunia/HTREnginev2/zke;

    invoke-direct {v0, p0, p1, p2}, Lcom/sunia/HTREnginev2/zke;-><init>(Lorg/apache/xmlbeans/impl/store/Cursor;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cursor;->syncWrap(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public toNextSibling(Ljavax/xml/namespace/QName;)Z
    .locals 1

    .line 4
    new-instance v0, Lcom/sunia/HTREnginev2/xle;

    invoke-direct {v0, p0, p1}, Lcom/sunia/HTREnginev2/xle;-><init>(Lorg/apache/xmlbeans/impl/store/Cursor;Ljavax/xml/namespace/QName;)V

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cursor;->syncWrap(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public toNextToken()Lorg/apache/xmlbeans/XmlCursor$TokenType;
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/mke;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/mke;-><init>(Lorg/apache/xmlbeans/impl/store/Cursor;)V

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cursor;->syncWrap(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/XmlCursor$TokenType;

    return-object p0
.end method

.method public toParent()Z
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/kje;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/kje;-><init>(Lorg/apache/xmlbeans/impl/store/Cursor;)V

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cursor;->syncWrap(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public toPrevAttribute()Z
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/yje;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/yje;-><init>(Lorg/apache/xmlbeans/impl/store/Cursor;)V

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cursor;->syncWrap(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public toPrevBookmark(Ljava/lang/Object;)Lorg/apache/xmlbeans/XmlCursor$XmlBookmark;
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/qme;

    invoke-direct {v0, p0, p1}, Lcom/sunia/HTREnginev2/qme;-><init>(Lorg/apache/xmlbeans/impl/store/Cursor;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cursor;->syncWrap(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/XmlCursor$XmlBookmark;

    return-object p0
.end method

.method public toPrevChar(I)I
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/gke;

    invoke-direct {v0, p0, p1}, Lcom/sunia/HTREnginev2/gke;-><init>(Lorg/apache/xmlbeans/impl/store/Cursor;I)V

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cursor;->syncWrap(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public toPrevSibling()Z
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/zie;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/zie;-><init>(Lorg/apache/xmlbeans/impl/store/Cursor;)V

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cursor;->syncWrap(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public toPrevToken()Lorg/apache/xmlbeans/XmlCursor$TokenType;
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/rke;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/rke;-><init>(Lorg/apache/xmlbeans/impl/store/Cursor;)V

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cursor;->syncWrap(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/XmlCursor$TokenType;

    return-object p0
.end method

.method public toSelection(I)Z
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/cne;

    invoke-direct {v0, p0, p1}, Lcom/sunia/HTREnginev2/cne;-><init>(Lorg/apache/xmlbeans/impl/store/Cursor;I)V

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cursor;->syncWrap(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public toStartDoc()V
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/mje;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/mje;-><init>(Lorg/apache/xmlbeans/impl/store/Cursor;)V

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cursor;->syncWrapNoEnter(Ljava/lang/Runnable;)V

    return-void
.end method

.method public xmlText()Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Lcom/sunia/HTREnginev2/vke;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/vke;-><init>(Lorg/apache/xmlbeans/impl/store/Cursor;)V

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cursor;->syncWrap(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public xmlText(Lorg/apache/xmlbeans/XmlOptions;)Ljava/lang/String;
    .locals 1

    .line 2
    new-instance v0, Lcom/sunia/HTREnginev2/lje;

    invoke-direct {v0, p0, p1}, Lcom/sunia/HTREnginev2/lje;-><init>(Lorg/apache/xmlbeans/impl/store/Cursor;Lorg/apache/xmlbeans/XmlOptions;)V

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cursor;->syncWrap(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method
