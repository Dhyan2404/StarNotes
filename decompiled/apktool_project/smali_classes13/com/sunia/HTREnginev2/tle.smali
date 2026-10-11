.class public final synthetic Lcom/sunia/HTREnginev2/tle;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lorg/apache/xmlbeans/impl/store/Cursor;

.field public final synthetic f:[C

.field public final synthetic g:I

.field public final synthetic h:I


# direct methods
.method public synthetic constructor <init>(Lorg/apache/xmlbeans/impl/store/Cursor;[CII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/tle;->e:Lorg/apache/xmlbeans/impl/store/Cursor;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/tle;->f:[C

    iput p3, p0, Lcom/sunia/HTREnginev2/tle;->g:I

    iput p4, p0, Lcom/sunia/HTREnginev2/tle;->h:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/sunia/HTREnginev2/tle;->e:Lorg/apache/xmlbeans/impl/store/Cursor;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/tle;->f:[C

    iget v2, p0, Lcom/sunia/HTREnginev2/tle;->g:I

    iget p0, p0, Lcom/sunia/HTREnginev2/tle;->h:I

    invoke-static {v0, v1, v2, p0}, Lorg/apache/xmlbeans/impl/store/Cursor;->f1(Lorg/apache/xmlbeans/impl/store/Cursor;[CII)V

    return-void
.end method
