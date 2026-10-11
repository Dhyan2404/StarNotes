.class public Lnet/sf/saxon/functions/StringJoin$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/functions/Fold;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/functions/StringJoin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public final b:Lnet/sf/saxon/str/UnicodeString;

.field public final c:Lnet/sf/saxon/str/UnicodeBuilder;

.field public final d:Z


# direct methods
.method public constructor <init>(Lnet/sf/saxon/str/UnicodeString;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lnet/sf/saxon/functions/StringJoin$a;->a:I

    iput-object p1, p0, Lnet/sf/saxon/functions/StringJoin$a;->b:Lnet/sf/saxon/str/UnicodeString;

    new-instance p1, Lnet/sf/saxon/str/UnicodeBuilder;

    invoke-direct {p1}, Lnet/sf/saxon/str/UnicodeBuilder;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/functions/StringJoin$a;->c:Lnet/sf/saxon/str/UnicodeBuilder;

    iput-boolean p2, p0, Lnet/sf/saxon/functions/StringJoin$a;->d:Z

    return-void
.end method


# virtual methods
.method public isFinished()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public processItem(Lnet/sf/saxon/om/Item;)V
    .locals 1

    iget v0, p0, Lnet/sf/saxon/functions/StringJoin$a;->a:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/sf/saxon/functions/StringJoin$a;->c:Lnet/sf/saxon/str/UnicodeBuilder;

    invoke-interface {p1}, Lnet/sf/saxon/om/Item;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p1

    invoke-virtual {v0, p1}, Lnet/sf/saxon/str/UnicodeBuilder;->append(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeBuilder;

    const/4 p1, 0x1

    iput p1, p0, Lnet/sf/saxon/functions/StringJoin$a;->a:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/functions/StringJoin$a;->c:Lnet/sf/saxon/str/UnicodeBuilder;

    iget-object p0, p0, Lnet/sf/saxon/functions/StringJoin$a;->b:Lnet/sf/saxon/str/UnicodeString;

    invoke-virtual {v0, p0}, Lnet/sf/saxon/str/UnicodeBuilder;->accept(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeBuilder;

    move-result-object p0

    invoke-interface {p1}, Lnet/sf/saxon/om/Item;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/str/UnicodeBuilder;->accept(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeBuilder;

    :goto_0
    return-void
.end method

.method public result()Lnet/sf/saxon/om/Sequence;
    .locals 1

    iget v0, p0, Lnet/sf/saxon/functions/StringJoin$a;->a:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lnet/sf/saxon/functions/StringJoin$a;->d:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lnet/sf/saxon/value/EmptySequence;->getInstance()Lnet/sf/saxon/value/EmptySequence;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lnet/sf/saxon/value/StringValue;

    iget-object p0, p0, Lnet/sf/saxon/functions/StringJoin$a;->c:Lnet/sf/saxon/str/UnicodeBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/str/UnicodeBuilder;->toUnicodeString()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    invoke-direct {v0, p0}, Lnet/sf/saxon/value/StringValue;-><init>(Lnet/sf/saxon/str/UnicodeString;)V

    return-object v0
.end method
