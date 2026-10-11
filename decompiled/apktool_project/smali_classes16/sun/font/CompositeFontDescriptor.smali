.class public Lsun/font/CompositeFontDescriptor;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private componentFaceNames:[Ljava/lang/String;

.field private componentFileNames:[Ljava/lang/String;

.field private coreComponentCount:I

.field private exclusionRangeLimits:[I

.field private exclusionRanges:[I

.field private faceName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/String;[I[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsun/font/CompositeFontDescriptor;->faceName:Ljava/lang/String;

    iput p2, p0, Lsun/font/CompositeFontDescriptor;->coreComponentCount:I

    iput-object p3, p0, Lsun/font/CompositeFontDescriptor;->componentFaceNames:[Ljava/lang/String;

    iput-object p4, p0, Lsun/font/CompositeFontDescriptor;->componentFileNames:[Ljava/lang/String;

    iput-object p5, p0, Lsun/font/CompositeFontDescriptor;->exclusionRanges:[I

    iput-object p6, p0, Lsun/font/CompositeFontDescriptor;->exclusionRangeLimits:[I

    return-void
.end method


# virtual methods
.method public getComponentFaceNames()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lsun/font/CompositeFontDescriptor;->componentFaceNames:[Ljava/lang/String;

    return-object p0
.end method

.method public getComponentFileNames()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lsun/font/CompositeFontDescriptor;->componentFileNames:[Ljava/lang/String;

    return-object p0
.end method

.method public getCoreComponentCount()I
    .locals 0

    iget p0, p0, Lsun/font/CompositeFontDescriptor;->coreComponentCount:I

    return p0
.end method

.method public getExclusionRangeLimits()[I
    .locals 0

    iget-object p0, p0, Lsun/font/CompositeFontDescriptor;->exclusionRangeLimits:[I

    return-object p0
.end method

.method public getExclusionRanges()[I
    .locals 0

    iget-object p0, p0, Lsun/font/CompositeFontDescriptor;->exclusionRanges:[I

    return-object p0
.end method

.method public getFaceName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lsun/font/CompositeFontDescriptor;->faceName:Ljava/lang/String;

    return-object p0
.end method
