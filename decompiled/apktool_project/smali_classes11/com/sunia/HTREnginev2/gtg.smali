.class public final synthetic Lcom/sunia/HTREnginev2/gtg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic e:[Lnet/sf/saxon/functions/FormatNumber$SubPicture;

.field public final synthetic f:Lnet/sf/saxon/trans/DecimalSymbols;


# direct methods
.method public synthetic constructor <init>([Lnet/sf/saxon/functions/FormatNumber$SubPicture;Lnet/sf/saxon/trans/DecimalSymbols;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/gtg;->e:[Lnet/sf/saxon/functions/FormatNumber$SubPicture;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/gtg;->f:Lnet/sf/saxon/trans/DecimalSymbols;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/gtg;->e:[Lnet/sf/saxon/functions/FormatNumber$SubPicture;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/gtg;->f:Lnet/sf/saxon/trans/DecimalSymbols;

    check-cast p1, Ljava/lang/Double;

    invoke-static {v0, p0, p1}, Lnet/sf/saxon/functions/FormatNumber;->a([Lnet/sf/saxon/functions/FormatNumber$SubPicture;Lnet/sf/saxon/trans/DecimalSymbols;Ljava/lang/Double;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
