package com.sunia.HTREnginev2;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.evernote.client.android.login.EvernoteLoginTask;
import com.google.android.exoplayer2.extractor.p007ts.C4756a;
import com.google.android.exoplayer2.extractor.p007ts.PsExtractor;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.google.zxing.WriterException;
import com.google.zxing.pdf417.PDF417Common;
import com.google.zxing.pdf417.decoder.DecodedBitStreamParser;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import com.onyx.galaxy.note.DataBinderMapperImpl;
import com.twelvemonkeys.imageio.metadata.iptc.IPTC;
import javax.xml.datatype.DatatypeConstants;
import net.p110sf.saxon.expr.UserFunctionCall;
import net.p110sf.saxon.om.StandardNames;
import org.apache.commons.compress.archivers.tar.TarConstants;
import org.apache.http.HttpStatus;

/* loaded from: classes4.dex */
public final class ujk {

    /* renamed from: a */
    public static final int[][] f86551a = {new int[]{27, 917}, new int[]{522, 568, 723, 809}, new int[]{237, 308, 436, 284, 646, 653, 428, 379}, new int[]{274, 562, 232, 755, StandardNames.XS_KEY, 524, 801, 132, DataBinderMapperImpl.f53046I4, 116, 442, 428, DataBinderMapperImpl.f53046I4, 42, 176, 65}, new int[]{361, 575, DecodedBitStreamParser.f38678j, StandardNames.XS_G_DAY, 176, StandardNames.XS_CHOICE, StandardNames.XSI, 321, StandardNames.XS_LONG, 742, 677, 742, 687, 284, 193, 517, 273, 494, 263, 147, StandardNames.XS_EXTENSION, CloudStorageConstants.ONE_NOTE_IMAGE_SHOW_WIDTH, 571, 320, 803, 133, 231, 390, 685, 330, 63, 410}, new int[]{539, 422, 6, 93, 862, 771, 453, 106, 610, 287, 107, 505, 733, UserFunctionCall.f99405v, 381, 612, 723, TarConstants.XSTAR_ATIME_OFFSET, 462, 172, 430, 609, EvernoteLoginTask.f21157t, 822, StandardNames.XS_UNSIGNED_INT, 376, 511, 400, 672, 762, 283, 184, 440, 35, 519, 31, 460, StandardNames.XS_FIELD, 225, StandardNames.XS_NEGATIVE_INTEGER, 517, DataBinderMapperImpl.f53082N5, 605, 158, 651, 201, TarConstants.XSTAR_CTIME_OFFSET, 502, 648, 733, 717, 83, 404, 97, 280, 771, DatatypeConstants.MIN_TIMEZONE_OFFSET, 629, 4, 381, 843, StandardNames.XS_TOTAL_DIGITS, 264, StandardNames.XS_UNSIGNED_INT}, new int[]{521, 310, 864, IPTC.TAG_RELEASE_TIME, EvernoteLoginTask.f21157t, StandardNames.XS_ANY_ATTRIBUTE, 296, 379, 53, 779, 897, 444, 400, 925, 749, 415, 822, 93, 217, 208, 928, 244, StandardNames.XS_ASSERTION, StandardNames.XS_SIMPLE_CONTENT, 246, 148, 447, StandardNames.XS_UNTYPED_ATOMIC, 292, 908, 490, TypedValues.TransitionType.TYPE_AUTO_TRANSITION, 516, 258, 457, 907, StandardNames.XS_FIELD, 723, 674, 292, 272, 96, 684, 432, 686, 606, 860, 569, 193, 219, 129, 186, 236, 287, 192, 775, 278, 173, 40, 379, 712, 463, 646, 776, 171, 491, 297, 763, 156, 732, 95, 270, 447, 90, 507, 48, 228, 821, 808, 898, 784, 663, IPTC.TAG_SOURCE, 378, 382, 262, 380, 602, 754, 336, 89, StandardNames.XS_PATTERN, 87, 432, 670, StandardNames.XS_RESTRICTION, 157, 374, DataBinderMapperImpl.f53038H3, 726, 600, 269, 375, 898, 845, 454, DataBinderMapperImpl.f53096P5, 130, 814, 587, 804, 34, 211, 330, 539, 297, 827, 865, 37, 517, 834, 315, IPTC.TAG_EXPIRATION_TIME, 86, 801, 4, 108, 539}, new int[]{524, 894, 75, 766, 882, 857, 74, 204, 82, StandardNames.XS_CHOICE, 708, 250, TypedValues.Custom.TYPE_DIMENSION, 786, 138, 720, EvernoteLoginTask.f21157t, 194, 311, 913, DataBinderMapperImpl.f53262o4, 190, 375, 850, 438, 733, 194, 280, 201, 280, 828, 757, 710, 814, 919, 89, 68, 569, 11, 204, 796, 605, StandardNames.XS_NON_NEGATIVE_INTEGER, 913, 801, 700, 799, 137, 439, 418, 592, 668, DataBinderMapperImpl.f53089O5, EvernoteLoginTask.f21158u, 370, 694, 325, 240, 216, 257, 284, IPTC.TAG_EXPIRATION_DATE, 209, 884, 315, 70, DataBinderMapperImpl.f53277q5, 793, 490, 274, UserFunctionCall.f99405v, 162, 749, 812, 684, 461, 334, 376, 849, 521, 307, 291, 803, 712, 19, 358, 399, 908, 103, 511, 51, 8, 517, 225, 289, FloatingActionButton.f31318y, IPTC.TAG_RASTERIZED_CATPTION, 731, 66, 255, 917, 269, 463, 830, 730, 433, 848, StandardNames.XS_ATTRIBUTE_GROUP, 136, 538, TypedValues.Custom.TYPE_REFERENCE, 90, 2, 290, 743, 199, 655, TypedValues.Custom.TYPE_STRING, DataBinderMapperImpl.f53277q5, 49, 802, StandardNames.XS_ANY_ATTRIBUTE, DataBinderMapperImpl.f53103Q5, StandardNames.XS_COMPLEX_TYPE, 188, 462, 10, 134, IPTC.TAG_COPYRIGHT_NOTICE, 320, 479, 130, 739, 71, 263, 318, 374, 601, 192, 605, 142, 673, 687, 234, 722, 384, 177, 752, 607, StandardNames.XSI, 455, 193, 689, TypedValues.TransitionType.TYPE_TRANSITION_FLAGS, 805, StandardNames.XSI_TYPE, 48, 60, 732, StandardNames.XS_SIMPLE_TYPE, 895, StandardNames.XS_UNSIGNED_SHORT, 261, 852, 655, 309, 697, 755, 756, 60, 231, 773, C4756a.f24690c, 421, 726, StandardNames.XS_BASE64_BINARY, 503, 118, 49, 795, 32, 144, 500, 238, 836, 394, 280, 566, 319, 9, IPTC.TAG_LANGUAGE_IDENTIFIER, IPTC.TAG_EXPIRATION_TIME, 73, 914, 342, 126, 32, 681, DataBinderMapperImpl.f53291s5, 792, StandardNames.XS_SIMPLE_CONTENT, 60, 609, PsExtractor.f24606o, 180, 791, 893, 754, 605, 383, 228, 749, 760, 213, 54, 297, 134, 54, 834, 299, DecodedBitStreamParser.f38678j, 191, 910, 532, 609, 829, 189, 20, 167, 29, 872, 449, 83, 402, 41, 656, 505, StandardNames.XS_ANY, 481, 173, 404, 251, 688, 95, 497, StandardNames.XS_LANGUAGE, 642, StandardNames.XS_UNSIGNED_INT, 307, 159, 924, StandardNames.XS_NAME, 648, 55, 497, 10}, new int[]{DataBinderMapperImpl.f53082N5, 77, 373, 504, 35, StandardNames.XS_KEY, 428, 207, 409, IPTC.TAG_DIGITAL_CREATION_DATE, 118, 498, 285, 380, DataBinderMapperImpl.f53068L5, 492, 197, 265, 920, 155, 914, 299, 229, 643, 294, 871, 306, 88, 87, 193, DataBinderMapperImpl.f53082N5, 781, 846, 75, 327, 520, 435, StandardNames.XS_UNSIGNED_INT, 203, 666, 249, 346, 781, StandardNames.XS_SIMPLE_TYPE, StandardNames.XSI, DataBinderMapperImpl.f53213h4, 794, 534, 539, 781, 408, 390, StandardNames.XSI_NO_NAMESPACE_SCHEMA_LOCATION, 102, TarConstants.XSTAR_ATIME_OFFSET, 499, 290, 632, StandardNames.XS_UNSIGNED_BYTE, 37, EvernoteLoginTask.f21157t, 916, IPTC.TAG_SPECIAL_INSTRUCTIONS, 41, 542, 289, 122, 272, 383, CloudStorageConstants.ONE_NOTE_IMAGE_SHOW_WIDTH, 485, 98, 752, 472, 761, 107, 784, 860, 658, 741, 290, 204, 681, 407, 855, 85, 99, 62, 482, 180, 20, 297, 451, StandardNames.XS_EXTENSION, 913, 142, 808, 684, 287, StandardNames.XS_LONG, StandardNames.XS_IDREF, 76, 653, 899, 729, IPTC.TAG_DATE_CREATED, 744, 390, 513, 192, 516, 258, 240, 518, 794, 395, 768, 848, 51, 610, 384, 168, 190, 826, 328, StandardNames.XS_GROUP, 786, 303, 570, 381, 415, StandardNames.XSI_TYPE, 156, 237, 151, HttpStatus.SC_TOO_MANY_REQUESTS, 531, 207, 676, 710, 89, 168, 304, 402, 40, 708, 575, 162, 864, 229, 65, 861, 841, 512, 164, 477, 221, 92, 358, 785, 288, 357, 850, 836, 827, 736, TypedValues.TransitionType.TYPE_TRANSITION_FLAGS, 94, 8, 494, 114, 521, 2, 499, 851, StandardNames.XS_UNSIGNED_INT, 152, 729, 771, 95, 248, 361, StandardNames.XS_ANNOTATION, 323, 856, 797, 289, 51, 684, 466, StandardNames.XS_INTEGER, 820, 669, 45, 902, 452, 167, 342, 244, 173, 35, 463, 651, 51, 699, StandardNames.XS_ELEMENT, 452, StandardNames.XS_ANNOTATION, 37, 124, DataBinderMapperImpl.f53067L4, 332, IPTC.TAG_SPECIAL_INSTRUCTIONS, 43, 427, 119, 662, 777, 475, 850, 764, 364, StandardNames.XS_ANNOTATION, 911, 283, IPTC.CUSTOM_TAG_JOBMINDER_ASSIGNMENT_DATA, 472, 420, 245, 288, StandardNames.XS_FIELD, 394, 511, 327, StandardNames.XS_DEFAULT_OPEN_CONTENT, 777, 699, 688, 43, 408, 842, 383, 721, 521, StandardNames.XS_ID, StandardNames.XSI_NO_NAMESPACE_SCHEMA_LOCATION, 714, 559, 62, 145, 873, 663, 713, 159, 672, 729, StandardNames.XS_UNION, 59, 193, 417, 158, 209, StandardNames.XS_ENTITY, StandardNames.XS_ENTITIES, DataBinderMapperImpl.f53019E5, 693, 109, 608, StandardNames.XS_ENTITY, 365, 181, 772, 677, 310, 248, DataBinderMapperImpl.f53089O5, 708, 410, StandardNames.XS_ANY, 870, 617, 841, 632, 860, 289, StandardNames.XS_LONG, 35, 777, StandardNames.XS_SELECTOR, StandardNames.XS_CHOICE, 424, 833, 77, 597, 346, 269, 757, 632, 695, 751, DataBinderMapperImpl.f53291s5, DataBinderMapperImpl.f53073M3, 184, 45, 787, 680, 18, 66, 407, 369, 54, 492, 228, 613, 830, DecodedBitStreamParser.f38678j, 437, 519, StandardNames.XSI_NO_NAMESPACE_SCHEMA_LOCATION, TypedValues.Custom.TYPE_DIMENSION, 789, 420, 305, PsExtractor.f24606o, 207, 300, 892, 827, 141, 537, 381, 662, 513, 56, 252, 341, DataBinderMapperImpl.f53038H3, 797, 838, 837, 720, 224, 307, StandardNames.XS_UNTYPED_ATOMIC, 61, 87, StandardNames.XS_ID, 310, 756, 665, 397, 808, 851, 309, 473, 795, 378, 31, IPTC.TAG_LANGUAGE_IDENTIFIER, 915, 459, 806, StandardNames.XS_DOCUMENTATION, 731, TypedValues.CycleType.TYPE_WAVE_PHASE, 216, 548, 249, 321, 881, 699, StandardNames.XS_NEGATIVE_INTEGER, 673, 782, 210, 815, TypedValues.Custom.TYPE_DIMENSION, 303, 843, DecodedBitStreamParser.f38678j, 281, 73, 469, 791, 660, 162, 498, 308, 155, 422, 907, 817, 187, 62, 16, TypedValues.CycleType.TYPE_WAVE_PHASE, StandardNames.XS_NEGATIVE_INTEGER, 336, 286, 437, 375, 273, 610, 296, 183, DecodedBitStreamParser.f38677i, 116, 667, 751, DataBinderMapperImpl.f53089O5, 62, 366, 691, 379, 687, 842, 37, 357, 720, 742, 330, 5, 39, DecodedBitStreamParser.f38677i, 311, 424, DataBinderMapperImpl.f53038H3, 749, 321, 54, 669, 316, 342, 299, 534, 105, 667, TarConstants.XSTAR_CTIME_OFFSET, StandardNames.XSI, 672, 576, StandardNames.XS_NON_NEGATIVE_INTEGER, 316, 486, 721, 610, 46, 656, 447, 171, StandardNames.XS_RESTRICTION, TarConstants.XSTAR_MULTIVOLUME_OFFSET, 190, 531, 297, 321, 762, 752, StandardNames.XS_INTEGER, 175, 134, 14, 381, 433, 717, 45, 111, 20, StandardNames.XS_GROUP, 284, 736, 138, 646, 411, UserFunctionCall.f99405v, 669, 141, 919, 45, 780, 407, 164, 332, 899, 165, 726, 600, 325, 498, 655, 357, 752, 768, 223, 849, IPTC.TAG_LANGUAGE_IDENTIFIER, 63, 310, 863, 251, 366, 304, 282, 738, 675, 410, StandardNames.XML_LANG_TYPE, 244, 31, 121, 303, 263}};

    /* renamed from: a */
    public static String m57628a(CharSequence charSequence, int i) {
        int m57629b = m57629b(i);
        char[] cArr = new char[m57629b];
        int length = charSequence.length();
        for (int i2 = 0; i2 < length; i2++) {
            int i3 = m57629b - 1;
            int charAt = (charSequence.charAt(i2) + cArr[i3]) % PDF417Common.NUMBER_OF_CODEWORDS;
            while (i3 > 0) {
                cArr[i3] = (char) ((cArr[i3 - 1] + (929 - ((f86551a[i][i3] * charAt) % PDF417Common.NUMBER_OF_CODEWORDS))) % PDF417Common.NUMBER_OF_CODEWORDS);
                i3--;
            }
            cArr[0] = (char) ((929 - ((charAt * f86551a[i][0]) % PDF417Common.NUMBER_OF_CODEWORDS)) % PDF417Common.NUMBER_OF_CODEWORDS);
        }
        StringBuilder sb = new StringBuilder(m57629b);
        for (int i4 = m57629b - 1; i4 >= 0; i4--) {
            char c = cArr[i4];
            if (c != 0) {
                cArr[i4] = (char) (929 - c);
            }
            sb.append(cArr[i4]);
        }
        return sb.toString();
    }

    /* renamed from: b */
    public static int m57629b(int i) {
        if (i < 0 || i > 8) {
            throw new IllegalArgumentException("Error correction level must be between 0 and 8!");
        }
        return 1 << (i + 1);
    }

    /* renamed from: c */
    public static int m57630c(int i) throws WriterException {
        if (i <= 0) {
            throw new IllegalArgumentException("n must be > 0");
        }
        if (i <= 40) {
            return 2;
        }
        if (i <= 160) {
            return 3;
        }
        if (i <= 320) {
            return 4;
        }
        if (i <= 863) {
            return 5;
        }
        throw new WriterException("No recommendation possible");
    }
}
