.class final Lorg/apache/xmlbeans/impl/store/Cur$Locations;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlbeans/impl/store/Cur;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Locations"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final NULL:I = -0x1

.field private static final _initialSize:I = 0x20


# instance fields
.field private _curs:[Lorg/apache/xmlbeans/impl/store/Cur;

.field private _free:I

.field private final _locale:Lorg/apache/xmlbeans/impl/store/Locale;

.field private _naked:I

.field private _next:[I

.field private _nextN:[I

.field private _poses:[I

.field private _prev:[I

.field private _prevN:[I

.field private _xobjs:[Lorg/apache/xmlbeans/impl/store/Xobj;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lorg/apache/xmlbeans/impl/store/Locale;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    const/16 p1, 0x20

    new-array v0, p1, [Lorg/apache/xmlbeans/impl/store/Xobj;

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_xobjs:[Lorg/apache/xmlbeans/impl/store/Xobj;

    new-array v0, p1, [I

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_poses:[I

    new-array v0, p1, [Lorg/apache/xmlbeans/impl/store/Cur;

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_curs:[Lorg/apache/xmlbeans/impl/store/Cur;

    new-array v0, p1, [I

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_next:[I

    new-array v0, p1, [I

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_prev:[I

    new-array v0, p1, [I

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_nextN:[I

    new-array p1, p1, [I

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_prevN:[I

    const/16 p1, 0x1f

    move v0, p1

    :goto_0
    const/4 v1, -0x1

    if-ltz v0, :cond_0

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_poses:[I

    const/4 v3, -0x2

    aput v3, v2, v0

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_next:[I

    add-int/lit8 v3, v0, 0x1

    aput v3, v2, v0

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_prev:[I

    aput v1, v2, v0

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_nextN:[I

    aput v1, v2, v0

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_prevN:[I

    aput v1, v2, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_next:[I

    aput v1, v0, p1

    const/4 p1, 0x0

    iput p1, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_free:I

    iput v1, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_naked:I

    return-void
.end method

.method private static insert(III[I[I)I
    .locals 1

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    .line 2
    aput p2, p4, p2

    goto :goto_0

    :cond_0
    if-eq p1, v0, :cond_1

    .line 3
    aget v0, p4, p1

    aput v0, p4, p2

    .line 4
    aput p1, p3, p2

    .line 5
    aput p2, p4, p1

    if-ne p0, p1, :cond_2

    :goto_0
    move p0, p2

    goto :goto_1

    .line 6
    :cond_1
    aget p1, p4, p0

    aput p1, p4, p2

    .line 7
    aget p1, p4, p0

    aput p2, p3, p1

    .line 8
    aput p2, p4, p0

    :cond_2
    :goto_1
    return p0
.end method

.method private makeRoom()V
    .locals 11

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_xobjs:[Lorg/apache/xmlbeans/impl/store/Xobj;

    array-length v1, v0

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_poses:[I

    iget-object v3, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_curs:[Lorg/apache/xmlbeans/impl/store/Cur;

    iget-object v4, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_next:[I

    iget-object v5, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_prev:[I

    iget-object v6, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_nextN:[I

    iget-object v7, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_prevN:[I

    mul-int/lit8 v8, v1, 0x2

    new-array v9, v8, [Lorg/apache/xmlbeans/impl/store/Xobj;

    iput-object v9, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_xobjs:[Lorg/apache/xmlbeans/impl/store/Xobj;

    new-array v10, v8, [I

    iput-object v10, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_poses:[I

    new-array v10, v8, [Lorg/apache/xmlbeans/impl/store/Cur;

    iput-object v10, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_curs:[Lorg/apache/xmlbeans/impl/store/Cur;

    new-array v10, v8, [I

    iput-object v10, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_next:[I

    new-array v10, v8, [I

    iput-object v10, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_prev:[I

    new-array v10, v8, [I

    iput-object v10, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_nextN:[I

    new-array v10, v8, [I

    iput-object v10, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_prevN:[I

    const/4 v10, 0x0

    invoke-static {v0, v10, v9, v10, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_poses:[I

    invoke-static {v2, v10, v0, v10, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_curs:[Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-static {v3, v10, v0, v10, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_next:[I

    invoke-static {v4, v10, v0, v10, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_prev:[I

    invoke-static {v5, v10, v0, v10, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_nextN:[I

    invoke-static {v6, v10, v0, v10, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_prevN:[I

    invoke-static {v7, v10, v0, v10, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v8, v8, -0x1

    move v0, v8

    :goto_0
    const/4 v2, -0x1

    if-lt v0, v1, :cond_0

    iget-object v3, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_next:[I

    add-int/lit8 v4, v0, 0x1

    aput v4, v3, v0

    iget-object v3, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_prev:[I

    aput v2, v3, v0

    iget-object v3, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_nextN:[I

    aput v2, v3, v0

    iget-object v3, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_prevN:[I

    aput v2, v3, v0

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_poses:[I

    const/4 v3, -0x2

    aput v3, v2, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_next:[I

    aput v2, v0, v8

    iput v1, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_free:I

    return-void
.end method

.method private static remove(II[I[I)I
    .locals 3

    .line 10
    aget v0, p3, p1

    const/4 v1, -0x1

    if-ne v0, p1, :cond_0

    move p0, v1

    goto :goto_1

    :cond_0
    if-ne p0, p1, :cond_1

    .line 11
    aget p0, p2, p1

    goto :goto_0

    .line 12
    :cond_1
    aget v2, p2, p1

    aput v2, p2, v0

    .line 13
    :goto_0
    aget v0, p2, p1

    if-ne v0, v1, :cond_2

    .line 14
    aget p2, p3, p1

    aput p2, p3, p0

    goto :goto_1

    .line 15
    :cond_2
    aget v2, p3, p1

    aput v2, p3, v0

    .line 16
    aput v1, p2, p1

    .line 17
    :goto_1
    aput v1, p3, p1

    return p0
.end method


# virtual methods
.method public allocate(Lorg/apache/xmlbeans/impl/store/Cur;)I
    .locals 4

    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_free:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->makeRoom()V

    :cond_0
    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_free:I

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_next:[I

    aget v3, v2, v0

    iput v3, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_free:I

    aput v1, v2, v0

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_xobjs:[Lorg/apache/xmlbeans/impl/store/Xobj;

    iget-object v3, p1, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    aput-object v3, v2, v0

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_poses:[I

    iget p1, p1, Lorg/apache/xmlbeans/impl/store/Cur;->_pos:I

    aput p1, v2, v0

    iget p1, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_naked:I

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_nextN:[I

    iget-object v3, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_prevN:[I

    invoke-static {p1, v1, v0, v2, v3}, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->insert(III[I[I)I

    move-result p1

    iput p1, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_naked:I

    return v0
.end method

.method public insert(III)I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_next:[I

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_prev:[I

    invoke-static {p1, p2, p3, v0, p0}, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->insert(III[I[I)I

    move-result p0

    return p0
.end method

.method public isAtEndOf(ILorg/apache/xmlbeans/impl/store/Cur;)Z
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_curs:[Lorg/apache/xmlbeans/impl/store/Cur;

    aget-object v0, v0, p1

    if-nez v0, :cond_1

    iget-object v0, p2, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_xobjs:[Lorg/apache/xmlbeans/impl/store/Xobj;

    aget-object p0, p0, p1

    if-ne v0, p0, :cond_0

    iget p0, p2, Lorg/apache/xmlbeans/impl/store/Cur;->_pos:I

    const/4 p1, -0x1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :cond_1
    invoke-virtual {p2, v0}, Lorg/apache/xmlbeans/impl/store/Cur;->isAtEndOf(Lorg/apache/xmlbeans/impl/store/Cur;)Z

    move-result p0

    return p0
.end method

.method public isSamePos(ILorg/apache/xmlbeans/impl/store/Cur;)Z
    .locals 2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_curs:[Lorg/apache/xmlbeans/impl/store/Cur;

    aget-object v0, v0, p1

    if-nez v0, :cond_1

    iget-object v0, p2, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_xobjs:[Lorg/apache/xmlbeans/impl/store/Xobj;

    aget-object v1, v1, p1

    if-ne v0, v1, :cond_0

    iget p2, p2, Lorg/apache/xmlbeans/impl/store/Cur;->_pos:I

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_poses:[I

    aget p0, p0, p1

    if-ne p2, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :cond_1
    invoke-virtual {p2, v0}, Lorg/apache/xmlbeans/impl/store/Cur;->isSamePos(Lorg/apache/xmlbeans/impl/store/Cur;)Z

    move-result p0

    return p0
.end method

.method public moveTo(ILorg/apache/xmlbeans/impl/store/Cur;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_curs:[Lorg/apache/xmlbeans/impl/store/Cur;

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_xobjs:[Lorg/apache/xmlbeans/impl/store/Xobj;

    aget-object v0, v0, p1

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_poses:[I

    aget p0, p0, p1

    invoke-virtual {p2, v0, p0}, Lorg/apache/xmlbeans/impl/store/Cur;->moveTo(Lorg/apache/xmlbeans/impl/store/Xobj;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2, v0}, Lorg/apache/xmlbeans/impl/store/Cur;->moveToCur(Lorg/apache/xmlbeans/impl/store/Cur;)V

    :goto_0
    return-void
.end method

.method public next(I)I
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_next:[I

    aget p0, p0, p1

    return p0
.end method

.method public notifyChange()V
    .locals 4

    :goto_0
    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_naked:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_nextN:[I

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_prevN:[I

    invoke-static {v0, v0, v1, v2}, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->remove(II[I[I)I

    move-result v1

    iput v1, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_naked:I

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_curs:[Lorg/apache/xmlbeans/impl/store/Cur;

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/store/Locale;->getCur()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object v2

    aput-object v2, v1, v0

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_curs:[Lorg/apache/xmlbeans/impl/store/Cur;

    aget-object v1, v1, v0

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_xobjs:[Lorg/apache/xmlbeans/impl/store/Xobj;

    aget-object v2, v2, v0

    iget-object v3, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_poses:[I

    aget v3, v3, v0

    invoke-virtual {v1, v2, v3}, Lorg/apache/xmlbeans/impl/store/Cur;->moveTo(Lorg/apache/xmlbeans/impl/store/Xobj;I)V

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_xobjs:[Lorg/apache/xmlbeans/impl/store/Xobj;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_poses:[I

    const/4 v2, -0x2

    aput v2, v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public prev(I)I
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_prev:[I

    aget p0, p0, p1

    return p0
.end method

.method public remove(II)I
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_curs:[Lorg/apache/xmlbeans/impl/store/Cur;

    aget-object v0, v0, p2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V

    .line 3
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_curs:[Lorg/apache/xmlbeans/impl/store/Cur;

    aput-object v1, v0, p2

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_xobjs:[Lorg/apache/xmlbeans/impl/store/Xobj;

    aput-object v1, v0, p2

    .line 5
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_poses:[I

    const/4 v1, -0x2

    aput v1, v0, p2

    .line 6
    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_naked:I

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_nextN:[I

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_prevN:[I

    invoke-static {v0, p2, v1, v2}, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->remove(II[I[I)I

    move-result v0

    iput v0, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_naked:I

    .line 7
    :goto_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_next:[I

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_prev:[I

    invoke-static {p1, p2, v0, v1}, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->remove(II[I[I)I

    move-result p1

    .line 8
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_next:[I

    iget v1, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_free:I

    aput v1, v0, p2

    .line 9
    iput p2, p0, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->_free:I

    return p1
.end method
