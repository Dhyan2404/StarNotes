.class public final synthetic Lcom/sunia/HTREnginev2/ftg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic e:Lnet/sf/saxon/lib/Numberer;

.field public final synthetic f:Lnet/sf/saxon/str/UnicodeString;

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lnet/sf/saxon/lib/Numberer;Lnet/sf/saxon/str/UnicodeString;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/ftg;->e:Lnet/sf/saxon/lib/Numberer;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/ftg;->f:Lnet/sf/saxon/str/UnicodeString;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/ftg;->g:Ljava/lang/String;

    iput-object p4, p0, Lcom/sunia/HTREnginev2/ftg;->h:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/sunia/HTREnginev2/ftg;->e:Lnet/sf/saxon/lib/Numberer;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/ftg;->f:Lnet/sf/saxon/str/UnicodeString;

    iget-object v2, p0, Lcom/sunia/HTREnginev2/ftg;->g:Ljava/lang/String;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/ftg;->h:Ljava/lang/String;

    check-cast p1, Lnet/sf/saxon/value/IntegerValue;

    invoke-static {v0, v1, v2, p0, p1}, Lnet/sf/saxon/functions/FormatInteger;->b(Lnet/sf/saxon/lib/Numberer;Lnet/sf/saxon/str/UnicodeString;Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/value/IntegerValue;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
