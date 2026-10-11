.class Lorg/apache/xmlbeans/impl/store/Bookmark;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlCursor$XmlMark;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field _key:Ljava/lang/Object;

.field _next:Lorg/apache/xmlbeans/impl/store/Bookmark;

.field _pos:I

.field _prev:Lorg/apache/xmlbeans/impl/store/Bookmark;

.field _value:Ljava/lang/Object;

.field _xobj:Lorg/apache/xmlbeans/impl/store/Xobj;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createCursor()Lorg/apache/xmlbeans/XmlCursor;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Bookmark;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    if-eqz v0, :cond_0

    iget p0, p0, Lorg/apache/xmlbeans/impl/store/Bookmark;->_pos:I

    invoke-static {v0, p0}, Lorg/apache/xmlbeans/impl/store/Cursor;->newCursor(Lorg/apache/xmlbeans/impl/store/Xobj;I)Lorg/apache/xmlbeans/XmlCursor;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Attempting to create a cursor on a bookmark that has been cleared or replaced."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isOnList(Lorg/apache/xmlbeans/impl/store/Bookmark;)Z
    .locals 0

    :goto_0
    if-eqz p1, :cond_1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object p1, p1, Lorg/apache/xmlbeans/impl/store/Bookmark;->_next:Lorg/apache/xmlbeans/impl/store/Bookmark;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public listInsert(Lorg/apache/xmlbeans/impl/store/Bookmark;)Lorg/apache/xmlbeans/impl/store/Bookmark;
    .locals 1

    if-nez p1, :cond_0

    iput-object p0, p0, Lorg/apache/xmlbeans/impl/store/Bookmark;->_prev:Lorg/apache/xmlbeans/impl/store/Bookmark;

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lorg/apache/xmlbeans/impl/store/Bookmark;->_prev:Lorg/apache/xmlbeans/impl/store/Bookmark;

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/store/Bookmark;->_prev:Lorg/apache/xmlbeans/impl/store/Bookmark;

    iget-object v0, p1, Lorg/apache/xmlbeans/impl/store/Bookmark;->_prev:Lorg/apache/xmlbeans/impl/store/Bookmark;

    iput-object p0, v0, Lorg/apache/xmlbeans/impl/store/Bookmark;->_next:Lorg/apache/xmlbeans/impl/store/Bookmark;

    iput-object p0, p1, Lorg/apache/xmlbeans/impl/store/Bookmark;->_prev:Lorg/apache/xmlbeans/impl/store/Bookmark;

    move-object p0, p1

    :goto_0
    return-object p0
.end method

.method public listRemove(Lorg/apache/xmlbeans/impl/store/Bookmark;)Lorg/apache/xmlbeans/impl/store/Bookmark;
    .locals 3

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Bookmark;->_prev:Lorg/apache/xmlbeans/impl/store/Bookmark;

    const/4 v1, 0x0

    if-ne v0, p0, :cond_0

    move-object p1, v1

    goto :goto_1

    :cond_0
    if-ne p1, p0, :cond_1

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/store/Bookmark;->_next:Lorg/apache/xmlbeans/impl/store/Bookmark;

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/Bookmark;->_next:Lorg/apache/xmlbeans/impl/store/Bookmark;

    iput-object v2, v0, Lorg/apache/xmlbeans/impl/store/Bookmark;->_next:Lorg/apache/xmlbeans/impl/store/Bookmark;

    :goto_0
    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/Bookmark;->_next:Lorg/apache/xmlbeans/impl/store/Bookmark;

    if-nez v2, :cond_2

    if-eqz p1, :cond_3

    iput-object v0, p1, Lorg/apache/xmlbeans/impl/store/Bookmark;->_prev:Lorg/apache/xmlbeans/impl/store/Bookmark;

    goto :goto_1

    :cond_2
    iput-object v0, v2, Lorg/apache/xmlbeans/impl/store/Bookmark;->_prev:Lorg/apache/xmlbeans/impl/store/Bookmark;

    iput-object v1, p0, Lorg/apache/xmlbeans/impl/store/Bookmark;->_next:Lorg/apache/xmlbeans/impl/store/Bookmark;

    :cond_3
    :goto_1
    iput-object v1, p0, Lorg/apache/xmlbeans/impl/store/Bookmark;->_prev:Lorg/apache/xmlbeans/impl/store/Bookmark;

    return-object p1
.end method

.method public moveTo(Lorg/apache/xmlbeans/impl/store/Xobj;I)V
    .locals 2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Bookmark;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    if-eq v0, p1, :cond_0

    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_bookmarks:Lorg/apache/xmlbeans/impl/store/Bookmark;

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/store/Bookmark;->listRemove(Lorg/apache/xmlbeans/impl/store/Bookmark;)Lorg/apache/xmlbeans/impl/store/Bookmark;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_bookmarks:Lorg/apache/xmlbeans/impl/store/Bookmark;

    iget-object v0, p1, Lorg/apache/xmlbeans/impl/store/Xobj;->_bookmarks:Lorg/apache/xmlbeans/impl/store/Bookmark;

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/store/Bookmark;->listInsert(Lorg/apache/xmlbeans/impl/store/Bookmark;)Lorg/apache/xmlbeans/impl/store/Bookmark;

    move-result-object v0

    iput-object v0, p1, Lorg/apache/xmlbeans/impl/store/Xobj;->_bookmarks:Lorg/apache/xmlbeans/impl/store/Bookmark;

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/store/Bookmark;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    :cond_0
    iput p2, p0, Lorg/apache/xmlbeans/impl/store/Bookmark;->_pos:I

    return-void
.end method
