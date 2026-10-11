package com.sunia.HTREnginev2;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.evernote.client.android.login.EvernoteLoginTask;
import com.google.android.exoplayer2.extractor.p007ts.C4756a;
import com.google.android.exoplayer2.extractor.p007ts.PsExtractor;
import com.google.android.exoplayer2.trackselection.AdaptiveTrackSelection;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.google.zxing.common.BitMatrix;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import com.onyx.android.sdk.data.common.exception.ContentException;
import com.onyx.android.sdk.universal.editor.helper.StylusClickHelper;
import com.onyx.galaxy.note.DataBinderMapperImpl;
import com.twelvemonkeys.imageio.metadata.iptc.IPTC;
import javax.xml.datatype.DatatypeConstants;
import net.p110sf.saxon.ma.json.JsonParser;
import net.p110sf.saxon.om.StandardNames;
import org.apache.commons.compress.archivers.tar.TarConstants;
import org.apache.commons.compress.archivers.zip.UnixStat;
import org.apache.commons.math3.util.FastMath;
import org.apache.http.HttpStatus;

/* renamed from: com.sunia.HTREnginev2.ds */
/* loaded from: classes4.dex */
public final class C13634ds {

    /* renamed from: b */
    public static final int[][] f68169b = {new int[]{121, 120, 127, 126, 133, 132, 139, 138, 145, 144, 151, 150, 157, 156, 163, 162, 169, 168, 175, 174, 181, 180, 187, 186, 193, 192, 199, 198, -2, -2}, new int[]{123, 122, 129, 128, 135, 134, 141, 140, 147, 146, 153, 152, 159, 158, 165, 164, 171, 170, 177, 176, 183, 182, 189, 188, 195, 194, 201, 200, 816, -3}, new int[]{125, 124, 131, 130, 137, 136, 143, 142, 149, 148, 155, 154, 161, 160, 167, 166, 173, 172, 179, 178, 185, 184, 191, 190, 197, 196, 203, 202, 818, 817}, new int[]{283, 282, 277, 276, 271, 270, 265, 264, 259, 258, 253, 252, DataBinderMapperImpl.f53073M3, 246, 241, 240, 235, 234, 229, 228, 223, 222, 217, 216, 211, 210, 205, 204, 819, -3}, new int[]{285, 284, 279, 278, 273, 272, DataBinderMapperImpl.f53206g4, 266, 261, DataBinderMapperImpl.f53157Z3, 255, 254, 249, 248, 243, DataBinderMapperImpl.f53038H3, 237, 236, 231, 230, 225, 224, 219, 218, 213, 212, 207, 206, 821, 820}, new int[]{287, 286, 281, 280, DataBinderMapperImpl.f53262o4, 274, 269, DataBinderMapperImpl.f53213h4, 263, 262, 257, 256, 251, 250, 245, 244, 239, 238, 233, 232, 227, 226, 221, 220, 215, 214, 209, 208, 822, -3}, new int[]{289, 288, DataBinderMapperImpl.f53046I4, 294, 301, 300, 307, 306, 313, 312, 319, 318, 325, 324, DataBinderMapperImpl.f53291s5, 330, 337, 336, DataBinderMapperImpl.f53019E5, 342, DataBinderMapperImpl.f53061K5, DataBinderMapperImpl.f53054J5, DataBinderMapperImpl.f53103Q5, DataBinderMapperImpl.f53096P5, 361, 360, 367, 366, 824, 823}, new int[]{291, 290, 297, 296, 303, 302, 309, 308, 315, 314, 321, 320, 327, 326, 333, 332, 339, 338, 345, DataBinderMapperImpl.f53026F5, 351, DataBinderMapperImpl.f53068L5, 357, 356, 363, 362, 369, 368, 825, -3}, new int[]{293, 292, 299, DataBinderMapperImpl.f53067L4, 305, 304, 311, 310, 317, 316, 323, 322, DataBinderMapperImpl.f53277q5, 328, DataBinderMapperImpl.f53319w5, 334, 341, 340, 347, 346, DataBinderMapperImpl.f53089O5, DataBinderMapperImpl.f53082N5, 359, 358, 365, 364, 371, 370, 827, 826}, new int[]{409, 408, 403, 402, 397, 396, 391, 390, 79, 78, -2, -2, 13, 12, 37, 36, 2, -1, 44, 43, 109, 108, StandardNames.XML_BASE, 384, 379, 378, 373, 372, 828, -3}, new int[]{411, 410, 405, 404, 399, 398, 393, 392, 81, 80, 40, -2, 15, 14, 39, 38, 3, -1, -1, 45, 111, 110, StandardNames.XML_LANG, StandardNames.XML_SPACE, 381, 380, 375, 374, 830, 829}, new int[]{413, 412, 407, 406, 401, 400, 395, 394, 83, 82, 41, -3, -3, -3, -3, -3, 5, 4, 47, 46, 113, 112, StandardNames.XML_LANG_TYPE, StandardNames.XML_ID, 383, 382, 377, 376, 831, -3}, new int[]{415, 414, 421, 420, 427, 426, 103, 102, 55, 54, 16, -3, -3, -3, -3, -3, -3, -3, 20, 19, 85, 84, 433, 432, 439, 438, 445, 444, 833, 832}, new int[]{417, 416, 423, 422, HttpStatus.SC_TOO_MANY_REQUESTS, 428, 105, 104, 57, 56, -3, -3, -3, -3, -3, -3, -3, -3, 22, 21, 87, 86, 435, C4756a.f24690c, PsExtractor.f24606o, 440, 447, 446, 834, -3}, new int[]{419, 418, TypedValues.CycleType.TYPE_WAVE_PHASE, 424, 431, 430, 107, 106, 59, 58, -3, -3, -3, -3, -3, -3, -3, -3, -3, 23, 89, 88, 437, 436, PsExtractor.f24604m, 442, 449, 448, 836, 835}, new int[]{481, JsonParser.DUPLICATES_SPECIFIED, 475, 474, 469, 468, 48, -2, 30, -3, -3, -3, -3, -3, -3, -3, -3, -3, -3, 0, 53, 52, 463, 462, 457, ContentException.CLOUD_SPACE_NOT_ENOUGH, 451, 450, 837, -3}, new int[]{483, 482, 477, TarConstants.XSTAR_ATIME_OFFSET, 471, FloatingActionButton.f31318y, 49, -1, -2, -3, -3, -3, -3, -3, -3, -3, -3, -3, -3, -3, -2, -1, 465, TarConstants.XSTAR_MULTIVOLUME_OFFSET, 459, 458, 453, 452, 839, 838}, new int[]{485, 484, 479, 478, 473, 472, 51, 50, 31, -3, -3, -3, -3, -3, -3, -3, -3, -3, -3, 1, -2, 42, 467, 466, 461, 460, 455, 454, DatatypeConstants.MIN_TIMEZONE_OFFSET, -3}, new int[]{487, 486, UnixStat.DEFAULT_DIR_PERM, 492, 499, 498, 97, 96, 61, 60, -3, -3, -3, -3, -3, -3, -3, -3, -3, 26, 91, 90, 505, 504, 511, 510, 517, 516, 842, 841}, new int[]{489, TarConstants.XSTAR_CTIME_OFFSET, 495, 494, 501, 500, 99, 98, 63, 62, -3, -3, -3, -3, -3, -3, -3, -3, 28, 27, 93, 92, 507, 506, 513, 512, 519, 518, 843, -3}, new int[]{491, 490, 497, 496, 503, 502, 101, 100, 65, 64, 17, -3, -3, -3, -3, -3, -3, -3, 18, 29, 95, 94, 509, 508, 515, 514, 521, 520, 845, 844}, new int[]{559, StandardNames.XS_NAME, StandardNames.XS_NORMALIZED_STRING, IPTC.TAG_SPECIAL_INSTRUCTIONS, IPTC.TAG_RELEASE_TIME, 546, StandardNames.XS_POSITIVE_INTEGER, StandardNames.XS_NON_NEGATIVE_INTEGER, 73, 72, 32, -3, -3, -3, -3, -3, -3, 10, 67, 66, 115, 114, StandardNames.XS_NEGATIVE_INTEGER, 534, 529, StandardNames.XS_BASE64_BINARY, StandardNames.XS_G_YEAR, 522, 846, -3}, new int[]{StandardNames.XS_IDREF, StandardNames.XS_ID, StandardNames.XS_LANGUAGE, 554, IPTC.TAG_EXPIRATION_DATE, 548, StandardNames.XS_UNSIGNED_INT, 542, 75, 74, -2, -1, 7, 6, 35, 34, 11, -2, 69, 68, 117, 116, 537, StandardNames.XS_LONG, 531, 530, StandardNames.XS_G_DAY, 524, 848, 847}, new int[]{StandardNames.XS_ENTITY, 562, 557, StandardNames.XS_NMTOKEN, 551, IPTC.TAG_EXPIRATION_TIME, StandardNames.XS_UNSIGNED_BYTE, StandardNames.XS_UNSIGNED_SHORT, 77, 76, -2, 33, 9, 8, 25, 24, -1, -2, 71, 70, 119, 118, 539, 538, StandardNames.XS_INTEGER, 532, 527, StandardNames.XS_G_MONTH, 849, -3}, new int[]{StandardNames.XS_DATE_TIME_STAMP, StandardNames.XS_ENTITIES, 571, 570, 577, 576, StandardNames.XS_ASSERTION, 582, StandardNames.XS_DEFAULT_OPEN_CONTENT, StandardNames.XS_COMPLEX_TYPE, StandardNames.XS_FRACTION_DIGITS, StandardNames.XS_FIELD, 601, 600, 607, 606, 613, 612, StandardNames.XS_SEQUENCE, StandardNames.XS_SELECTOR, StandardNames.XS_UNIQUE, StandardNames.XS_UNION, StandardNames.XS_UNTYPED_ATOMIC, 630, IPTC.TAG_RASTERIZED_CATPTION, 636, 643, 642, 851, 850}, new int[]{IPTC.TAG_DATE_CREATED, 566, StandardNames.XS_ANY_SIMPLE_TYPE, 572, StandardNames.XS_ANY, StandardNames.XS_ANNOTATION, StandardNames.XS_ATTRIBUTE_GROUP, StandardNames.XS_ATTRIBUTE, StandardNames.XS_ELEMENT, StandardNames.XS_DOCUMENTATION, 597, StandardNames.XS_GROUP, 603, 602, 609, 608, 615, StandardNames.XS_PATTERN, StandardNames.XS_SIMPLE_TYPE, StandardNames.XS_SIMPLE_CONTENT, IPTC.TAG_SOURCE, StandardNames.XS_WHITE_SPACE, StandardNames.XS_YEAR_MONTH_DURATION, 632, 639, 638, StandardNames.XSI_SCHEMA_LOCATION_TYPE, StandardNames.XSI_NO_NAMESPACE_SCHEMA_LOCATION, 852, -3}, new int[]{569, 568, 575, IPTC.TAG_DIGITAL_CREATION_DATE, StandardNames.XS_APPINFO, StandardNames.XS_ANY_ATTRIBUTE, 587, StandardNames.XS_CHOICE, StandardNames.XS_EXTENSION, 592, StandardNames.XS_KEY, StandardNames.XS_INCLUDE, 605, 604, 611, 610, 617, StandardNames.XS_RESTRICTION, StandardNames.XS_TOTAL_DIGITS, 622, 629, IPTC.TAG_COPYRIGHT_NOTICE, 635, 634, StandardNames.XSI_TYPE, StandardNames.XSI, IPTC.TAG_LANGUAGE_IDENTIFIER, 646, 854, 853}, new int[]{727, 726, 721, 720, 715, 714, 709, 708, 703, TypedValues.TransitionType.TYPE_TO, 697, 696, 691, 690, 685, 684, 679, 678, 673, 672, 667, 666, 661, 660, 655, 654, 649, 648, 855, -3}, new int[]{729, 728, 723, 722, 717, 716, IPTC.CUSTOM_TAG_JOBMINDER_ASSIGNMENT_DATA, 710, TypedValues.TransitionType.TYPE_INTERPOLATOR, TypedValues.TransitionType.TYPE_AUTO_TRANSITION, 699, 698, 693, 692, 687, 686, 681, 680, 675, 674, 669, 668, 663, 662, 657, 656, 651, 650, 857, 856}, new int[]{731, 730, 725, 724, AdaptiveTrackSelection.DEFAULT_MAX_HEIGHT_TO_DISCARD, StylusClickHelper.STYLUS_KEY_CODE_HW_TOUCH, 713, 712, TypedValues.TransitionType.TYPE_TRANSITION_FLAGS, TypedValues.TransitionType.TYPE_STAGGERED, TypedValues.TransitionType.TYPE_FROM, 700, 695, 694, 689, 688, 683, 682, 677, 676, 671, 670, 665, 664, 659, 658, 653, 652, EvernoteLoginTask.f21157t, -3}, new int[]{733, 732, 739, 738, 745, 744, 751, FastMath.f109852a, 757, 756, 763, 762, 769, 768, 775, 774, 781, 780, 787, 786, 793, 792, 799, 798, 805, 804, 811, 810, 860, EvernoteLoginTask.f21158u}, new int[]{735, 734, 741, 740, 747, 746, 753, 752, 759, 758, 765, 764, 771, 770, 777, 776, 783, 782, 789, 788, 795, 794, 801, CloudStorageConstants.ONE_NOTE_IMAGE_SHOW_WIDTH, 807, 806, 813, 812, 861, -3}, new int[]{737, 736, 743, 742, 749, 748, 755, 754, 761, 760, 767, 766, 773, 772, 779, 778, 785, 784, 791, 790, 797, 796, 803, 802, 809, 808, 815, 814, 863, 862}};

    /* renamed from: a */
    public final BitMatrix f68170a;

    public C13634ds(BitMatrix bitMatrix) {
        this.f68170a = bitMatrix;
    }

    /* renamed from: a */
    public byte[] m53703a() {
        byte[] bArr = new byte[144];
        int height = this.f68170a.getHeight();
        int width = this.f68170a.getWidth();
        for (int i = 0; i < height; i++) {
            int[] iArr = f68169b[i];
            for (int i2 = 0; i2 < width; i2++) {
                int i3 = iArr[i2];
                if (i3 >= 0 && this.f68170a.get(i2, i)) {
                    int i4 = i3 / 6;
                    bArr[i4] = (byte) (((byte) (1 << (5 - (i3 % 6)))) | bArr[i4]);
                }
            }
        }
        return bArr;
    }
}
