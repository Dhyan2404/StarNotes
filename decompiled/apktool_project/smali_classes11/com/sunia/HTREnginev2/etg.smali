.class public final synthetic Lcom/sunia/HTREnginev2/etg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic e:Lnet/sf/saxon/lib/Numberer;

.field public final synthetic f:Lnet/sf/saxon/str/UnicodeString;

.field public final synthetic g:Lnet/sf/saxon/expr/number/NumericGroupFormatter;

.field public final synthetic h:Ljava/lang/String;

.field public final synthetic i:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lnet/sf/saxon/lib/Numberer;Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/expr/number/NumericGroupFormatter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/etg;->e:Lnet/sf/saxon/lib/Numberer;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/etg;->f:Lnet/sf/saxon/str/UnicodeString;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/etg;->g:Lnet/sf/saxon/expr/number/NumericGroupFormatter;

    iput-object p4, p0, Lcom/sunia/HTREnginev2/etg;->h:Ljava/lang/String;

    iput-object p5, p0, Lcom/sunia/HTREnginev2/etg;->i:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lcom/sunia/HTREnginev2/etg;->e:Lnet/sf/saxon/lib/Numberer;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/etg;->f:Lnet/sf/saxon/str/UnicodeString;

    iget-object v2, p0, Lcom/sunia/HTREnginev2/etg;->g:Lnet/sf/saxon/expr/number/NumericGroupFormatter;

    iget-object v3, p0, Lcom/sunia/HTREnginev2/etg;->h:Ljava/lang/String;

    iget-object v4, p0, Lcom/sunia/HTREnginev2/etg;->i:Ljava/lang/String;

    move-object v5, p1

    check-cast v5, Lnet/sf/saxon/value/IntegerValue;

    invoke-static/range {v0 .. v5}, Lnet/sf/saxon/functions/FormatInteger;->a(Lnet/sf/saxon/lib/Numberer;Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/expr/number/NumericGroupFormatter;Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/value/IntegerValue;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
