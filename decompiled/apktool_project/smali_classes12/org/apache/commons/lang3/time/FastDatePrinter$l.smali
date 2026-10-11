.class public Lorg/apache/commons/lang3/time/FastDatePrinter$l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/lang3/time/FastDatePrinter$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/time/FastDatePrinter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "l"
.end annotation


# instance fields
.field public final a:Lorg/apache/commons/lang3/time/FastDatePrinter$d;


# direct methods
.method public constructor <init>(Lorg/apache/commons/lang3/time/FastDatePrinter$d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/lang3/time/FastDatePrinter$l;->a:Lorg/apache/commons/lang3/time/FastDatePrinter$d;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Appendable;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/commons/lang3/time/FastDatePrinter$l;->a:Lorg/apache/commons/lang3/time/FastDatePrinter$d;

    invoke-interface {p0, p1, p2}, Lorg/apache/commons/lang3/time/FastDatePrinter$d;->a(Ljava/lang/Appendable;I)V

    return-void
.end method

.method public b()I
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/lang3/time/FastDatePrinter$l;->a:Lorg/apache/commons/lang3/time/FastDatePrinter$d;

    invoke-interface {p0}, Lorg/apache/commons/lang3/time/FastDatePrinter$f;->b()I

    move-result p0

    return p0
.end method

.method public c(Ljava/lang/Appendable;Ljava/util/Calendar;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xa

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->getLeastMaximum(I)I

    move-result p2

    add-int/lit8 v1, p2, 0x1

    :cond_0
    iget-object p0, p0, Lorg/apache/commons/lang3/time/FastDatePrinter$l;->a:Lorg/apache/commons/lang3/time/FastDatePrinter$d;

    invoke-interface {p0, p1, v1}, Lorg/apache/commons/lang3/time/FastDatePrinter$d;->a(Ljava/lang/Appendable;I)V

    return-void
.end method
