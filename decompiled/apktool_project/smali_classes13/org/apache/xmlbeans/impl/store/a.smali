.class public final synthetic Lorg/apache/xmlbeans/impl/store/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/impl/store/Cursor$WrapIOEx;


# instance fields
.field public final synthetic a:Lorg/apache/xmlbeans/impl/store/Cursor;

.field public final synthetic b:Ljava/io/OutputStream;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/xmlbeans/impl/store/Cursor;Ljava/io/OutputStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/store/a;->a:Lorg/apache/xmlbeans/impl/store/Cursor;

    iput-object p2, p0, Lorg/apache/xmlbeans/impl/store/a;->b:Ljava/io/OutputStream;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/a;->a:Lorg/apache/xmlbeans/impl/store/Cursor;

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/a;->b:Ljava/io/OutputStream;

    invoke-static {v0, p0}, Lorg/apache/xmlbeans/impl/store/Cursor;->R0(Lorg/apache/xmlbeans/impl/store/Cursor;Ljava/io/OutputStream;)V

    return-void
.end method
