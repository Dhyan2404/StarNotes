.class public final Lnet/sf/saxon/functions/UnparsedTextFunction$a;
.super Lnet/sf/saxon/str/AbstractUniStringConsumer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sf/saxon/functions/UnparsedTextFunction;->readFile(Lnet/sf/saxon/z/IntPredicateProxy;Ljava/io/Reader;)Lnet/sf/saxon/str/UnicodeString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lnet/sf/saxon/str/UnicodeBuilder;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/str/UnicodeBuilder;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/functions/UnparsedTextFunction$a;->e:Lnet/sf/saxon/str/UnicodeBuilder;

    invoke-direct {p0}, Lnet/sf/saxon/str/AbstractUniStringConsumer;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UniStringConsumer;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/functions/UnparsedTextFunction$a;->e:Lnet/sf/saxon/str/UnicodeBuilder;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/str/UnicodeBuilder;->accept(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeBuilder;

    move-result-object p0

    return-object p0
.end method
