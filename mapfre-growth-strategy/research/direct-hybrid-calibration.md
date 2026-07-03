# Calibrating the Direct-to-Agent Bind Model
## Plymouth Rock Prime/eSales Mechanics, Verti USA Post-Mortem, and Aggregator Unit Economics

**Prepared:** 2026-07-02 | **Scope:** Public-source fact base for MAPFRE Insurance (The Commerce Insurance Company) growth strategy — calibrating a Massachusetts direct-bind channel that preserves the independent-agent franchise.

---

## 1. Executive summary

- Plymouth Rock has run a "bind online, assign to an agent for a fee" model in Massachusetts continuously since October 2015. The agent-facing mechanics are fully documented in Plymouth Rock's own producer materials: every policy sold online or through the Plymouth Rock Sales Center is **assigned to an appointed agency in exchange for a one-time marketing fee**, after which the agent owns the business for life at full commission [1][2][3][4]. The dollar amount of the fee is not public.
- There is no evidence of a separate direct rate filing: the same "Prime" product, filed for Plymouth Rock Assurance Corporation in Massachusetts, is sold through both channels, and every policy — regardless of purchase path — carries an agent of record [3][4]. Rate parity across channels is the structural consequence (inference from primary documents, flagged as such in Section 2.4).
- Volume signal: Plymouth Rock's Direct Group (enterprise-wide, including New Jersey) wrote roughly **$500M in 2025** across three books — ~$140M legacy Prudential, ~$260M "Partner" (aggregators/affinity, largely unprofitable for years), and **~$110M "Core Direct"** — with a Direct Group combined ratio just under 97% and a stated goal of $500M Core Direct by 2030. Chairman James Stone explicitly frames direct growth as a period where "the more money we lose, the better we will be doing" because of first-year acquisition spend [6].
- Verti USA is the closest available cautionary case: MAPFRE's own greenfield digital direct brand, soft-launched in Pennsylvania in October 2017, never expanded beyond PA, was carved out as an exception when MAPFRE non-renewed its other PA business in 2020, and then went dark quietly — no press release, no disclosed premium — with new sales apparently ceasing around late 2021; verti.com now lands on a MAPFRE Insurance page [7][8][13][15][16].
- Digital demand is expensive and concentrated: EverQuote's FY2024 revenue was $500.2M (+74%), 89% from auto, with its **largest customer (widely understood to be Progressive) alone at 39% of revenue**; FY2025 revenue reached $692.5M [17][18]. MediaAlpha's P&C Transaction Value was ~$1.2B in FY2024 and $548M in Q3 2025 alone (+41% YoY) [19][20]. Agent-side lead prices run roughly **$6–21 per shared/exclusive lead**; industry CAC benchmarks for a bound auto policy cluster around **$500–900** [21][22][23].
- Build-side benchmarks support a $5–15M MVP for a bind-online front end on an existing core: Nationwide built and launched its greenfield digital auto product Spire on Socotra in **nine months** (live December 2019) — and then Spire failed commercially within a year, demonstrating that technology is not the binding constraint; demand economics are [24][25][26].

---

## 2. Plymouth Rock Prime / eSales: the documented mechanics

### 2.1 What "Prime" actually is — disambiguation

Public materials use "Prime" in two senses. (a) **Prime the product**: Plymouth Rock's re-filed Massachusetts private passenger auto product effective October 1, 2015, with new discounts (Advanced Shopper up to 8%, Mature Driver up to 20%, Safety Pledge 5%) and "Assurance Package" tiers [3]. (b) **Prime the go-to-market**: the launch, announced August 2015, that let Massachusetts consumers quote **and buy** at plymouthrock.com for the first time, with every online sale routed to an independent agent [1][2][5]. In later agent materials the e-commerce capability is branded **"eSales"** [4].

### 2.2 The direct-to-agent assignment mechanics (primary sources)

Plymouth Rock's own agent-facing flip chart states the core mechanic verbatim: *"eSales is an ecommerce platform that allows prospects to quote and buy online — either from the Plymouth Rock website or from your website... No matter where a prospect buys, every policy sold is assigned to an agency for a marketing fee."* [4]

Documented elements of the model:

| Mechanic | What the public record shows | Source |
|---|---|---|
| One-time marketing fee | Agents pay a one-time fee when an online-sold policy is transferred; thereafter the agent "owns the business for life" at **full commission**. Fee amount never disclosed publicly. | [1][2] |
| Agent autonomy post-transfer | Agent may modify coverage, cross-sell, up-sell, or even move the customer to another carrier — "keeping the 'independent' in independent agency" (CEO Chris Olie) | [1][2] |
| Dual online entry points | Consumers can buy from plymouthrock.com **or from the agent's own website** via a unique agency eSales URL requested from the marketing rep — agents get a white-labeled version of the direct funnel | [4] |
| Phone bind backstop | The Plymouth Rock Sales Center can bind policies by phone "on behalf of an agent in the eSales program" (e.g., unregistered-vehicle RMV-1 workflows specific to MA) | [4] |
| Post-sale consultation script | Agents are instructed to call the customer after purchase, explain the independent-agent relationship, verify coverages/discounts, and round out the account (home, umbrella, referrals) | [4] |
| Agent Quote Marketplace (AQM) | Quotes started online that don't bind are deposited into a proprietary, patent-pending lead marketplace where appointed agents can buy consented leads and quote **multiple carriers**, not just Plymouth Rock | [2][4] |
| Eligibility | Framed as available to appointed MA agencies ("My agency is authorized, what's next?"); no public evidence of volume thresholds or selective eligibility criteria | [4] |

### 2.3 Volume signals

Plymouth Rock does not disclose Massachusetts eSales-channel volume. The best public calibration is the enterprise-level disclosure in the chairman's 2025 letter (published early 2026, covering FY2025) [6]:

| Plymouth Rock Direct Group book (FY2025) | Annual premium | Notes |
|---|---|---|
| Legacy (2003 Prudential renewal rights) | ~$140M | Attriting, "increasingly from deaths rather than churn" |
| Partner (carriers, super-agents, affinity, **aggregators**) | ~$260M | "A disappointment... loss ratios high for years"; small profit in 2025 only after trimming volume |
| Core Direct (no intermediary payment) | **~$110M** | Board goal: **$500M by end of the decade**, via "Telematics First" targeting |
| Direct Group total | ~$510M | Combined ratio "just south of 97%" in 2025 |

Context: Plymouth Rock enterprise-wide wrote ~$2.4B in 2025 [6]. So after a decade of operating the hybrid model plus a dedicated direct group led by a 37-year GEICO veteran, direct-without-intermediaries is still under 5% of enterprise premium — but growing deliberately, with the chairman explicit that scaling it requires sustained first-year underwriting losses [6].

### 2.4 How Prime rates are filed relative to agency rates

No public source describes a separate direct-channel rate filing, and the primary documents point the other way: there is **one Prime product** (one MA filing for Plymouth Rock Assurance Corporation, effective 10/1/2015 for new business) sold through both paths, and *every* policy — online, phone, or agency-quoted — ends up with an agent of record who is paid full commission [1][3][4]. Because commission is paid on channel-agnostic terms and the buyer cannot avoid agent assignment, the filed rate structure is necessarily channel-neutral; the direct channel is monetized through the one-time marketing fee charged to the receiving agent rather than through a lower direct rate. **This is an inference from producer materials and trade coverage, not a verified reading of the SERFF filing itself**; a MA DOI/SERFF pull for Plymouth Rock Assurance Corp's 2015 Prime filing would confirm it. Massachusetts "managed competition" rules (rates filed per company) make a same-company dual-rate structure difficult in any case.

---

## 3. Verti USA: the assembled post-mortem

### 3.1 Launch and design (2017–2018)

- **Soft launch October 2017; full launch announced December 2017**, exclusively in Pennsylvania, as MAPFRE USA's "first ever digital offering" — fully digital, mobile-first quote/bind/service, aimed at self-service customers, with each customer paired with a "Personal Advisor" [7][8].
- Site selection logic per MAPFRE: Pennsylvania's regulatory climate "is similar to many other states" and it was the sixth-largest US auto market; specific PA counties were targeted via audience segmentation [7]. Notably, Verti was launched *outside* MAPFRE's Massachusetts stronghold — a deliberate choice to avoid channel conflict with the Commerce agent franchise, which also meant launching with zero local brand equity.
- Timing context: Verti launched simultaneously with the December 2017 US retrenchment — exit from NY, NJ, KY, TN, IN; sale of the NY subsidiary and the life business; focus on 11 core states plus "reinforcement" of PA, FL, AZ [8][9][10]. MAPFRE USA had ~$2.3B of 2016 revenue, 67% of it in the Northeast [9].

### 3.2 Scale and pricing position

**No public source discloses Verti USA's premium, policy count, or rate position.** MAPFRE never broke out Verti USA in group reporting (the group's "digital business" disclosures aggregate Verti Spain/Germany/Italy with MAPFRE.COM and Savia) [13]. Statutory data would sit inside the underwriting entity's PA line rather than a standalone "Verti" company; we did not locate a SERFF filing or NAIC statement isolating it. This absence is itself informative: seven years of group reports never once cited Verti USA as a growth proof point. What can be anchored: MAPFRE USA total written premium was **$1.9B in 2020** with $89.5M US net income, so Verti USA was immaterial at group level [14].

### 3.3 Timeline of the wind-down

| Date | Event | Source |
|---|---|---|
| Oct–Dec 2017 | Soft launch, then public launch, PA only | [7][8] |
| Oct 2018 | CEO Alfredo Castelo: "we will focus on Pennsylvania for the next few years before making a decision to expand" — expansion never came | [11] |
| Feb 2020 | On the FY2019 analyst call, MAPFRE says AZ, PA, FL are "on the radar" for fixing loss-making US operations — but explicitly excludes Verti from the PA review | [12] |
| FY2020 report (Mar 2021) | Group discontinues AZ and PA operations via non-renewal "**with the exception of the VERTI USA business**" | [13] |
| ~Late 2021 | New sales apparently cease — no announcement; inferred from Coverager's Oct 14, 2022 report that Verti had not been selling "for at least 11 months," per Google-review evidence and a Facebook notice directing customers to verti.com | [15] |
| 2022→present | Verti brand retired in the US; verti.com resolves to a MAPFRE Insurance page (accessed July 2026); MAPFRE's 2022 integrated report contains no US mention of Verti | [16][13] |

### 3.4 Inferred causes of failure (public record synthesis)

1. **Subscale by design.** One state, selected counties, a new brand with no advertising scale, launched precisely when the parent was cutting US exposure. Four years in, it warranted zero disclosure — the strongest available evidence it never approached viable volume [7][13][14].
2. **Strategic incoherence with the parent's US direction.** From Dec 2017 onward every corporate action ran toward concentration in the Northeast agency franchise (state exits, NY/NJ sales to Plymouth Rock, non-renewal of PA/AZ traditional books). A growth-stage direct startup requiring years of CAC losses could not survive inside a profitability-restructuring agenda [8][9][12][13].
3. **Direct CAC mathematics without brand or data density.** Plymouth Rock's chairman describes exactly the investment curve Verti faced ("substantial first-year acquisition spending... the more money we lose, the better we will be doing") [6]. MAPFRE, unlike Plymouth Rock in NJ/MA, had neither PA brand recognition nor a PA renewal book to subsidize the J-curve.
4. **The carve-out proves intent, not success.** Keeping Verti alive while non-renewing the rest of PA (2020) shows MAPFRE valued the digital option — then chose not to fund it through the 2021 planning cycle, exiting silently rather than with a disclosed write-down [13][15]. (Group-level note: even in mature Spain, Verti required a €36M capital rebalancing disclosed in 2023 — digital direct was structurally lossy for MAPFRE beyond the US [29].)

**Trust note:** items 1–4 are analyst synthesis; the load-bearing facts (dates, carve-out language, absence of disclosure) are cited. No public document states MAPFRE's official reason for closing Verti USA.

---

## 4. Aggregator unit economics: what digital demand costs

### 4.1 Marketplace scale and pricing power (investor disclosures)

| Metric | Value | As of | Source |
|---|---|---|---|
| EverQuote total revenue | $500.2M (+74% YoY) | FY2024 | [17] |
| EverQuote revenue from auto insurance providers | 89% of total | FY2024 | [17] |
| EverQuote largest customer share of revenue | **39%** (vs. two largest = 27% in FY2023) | FY2024 | [17] |
| EverQuote total revenue | $692.5M (+38%); Q4 $195.3M, of which auto $179.9M | FY2025 | [18] |
| EverQuote Q4 Variable Marketing Dollars | $49.3M (25.2% of revenue) | Q4 2025 | [18] |
| MediaAlpha Transaction Value | $1.5B total; **P&C vertical ~$1.2B** (+325% YoY) | FY2024 | [19] |
| MediaAlpha Q3 Transaction Value | $589.3M total; P&C $548.2M (+41% YoY); revenue $306.5M | Q3 2025 | [20] |
| MediaAlpha Q4 guidance | TV $620–645M (+27% mid) | Q4 2025 | [20] |

Two structural facts matter for a subscale buyer. First, **concentration**: EverQuote's largest customer (industry consensus: Progressive) alone was 39% of FY2024 revenue [17]. Auction prices are set by carriers with the best LTV models and lowest loss ratios; a single-state carrier bids against them for the same MA consumer. Second, **carrier spending is pro-cyclical and rising**: both platforms attribute 2024–2025 growth to carriers restoring underwriting profit and re-opening growth budgets ("More auto insurance carriers are focusing on growth as they restore underwriting profitability" — MediaAlpha CEO Steve Yi, Oct 2025) [20], i.e., MAPFRE would be entering at a cyclical price peak.

Neither platform now discloses unit volumes (EverQuote stopped reporting quote-request counts; its 10-K discusses "revenue per quote request" only directionally [17]), so per-referral revenue must be triangulated from buyer-side evidence.

### 4.2 Per-lead and per-bound-policy math (buyer side)

- **Agent-side lead prices:** agent-reported EverQuote pricing runs roughly **$6 (non-standard, shared) to $21 (premium, exclusive)** per auto lead; shared leads go to a maximum of three agents; quality complaints are chronic ("zero business from their leads") [21][22]. As-of ~2025–mid-2026.
- **Carrier-side clicks/calls** (the channel a direct-bind MAPFRE would buy) are priced by auction and not publicly disclosed; they are materially more expensive than agent leads at comparable intent.
- **Bound-policy benchmarks:** industry CAC compilations put direct writers (GEICO/Progressive) near **$487 per acquired customer**, the industry average at **$500–800**, and agent-channel acquisition near **$900**; a 2026 benchmark survey pegs captive-channel CAC at ~$792 [23]. Plymouth Rock's chairman independently confirms direct-channel CAC is heavy enough that scaling Core Direct implies multi-year underwriting losses [6].

**Illustrative bound-policy cost bridge (analyst arithmetic; assumptions labeled):**

| Path | Unit cost (sourced) | Close-rate assumption (analyst) | Implied marketing cost per bound policy |
|---|---|---|---|
| Shared aggregator leads worked by staff | $10–15/lead [21][22] | 3–7% | ~$150–500 (+ labor) |
| Exclusive leads | ~$20/lead [21][22] | 7–12% | ~$170–290 (+ labor) |
| Carrier click/call buys + brand mix (industry all-in) | — | — | **~$500–900** [23] |

For a single-state MA launch: Massachusetts full-coverage premiums average roughly **$1,200–2,430/year depending on source and profile** (2025–2026 estimates; methodology variance is large) [30]. At ~$1,700–2,000 average premium, a $500–900 CAC equals 25–50% of first-year premium — recoverable only on multi-year retention. Bounding a pilot: **10,000 incremental bound policies ≈ $17–20M premium and $5–9M of acquisition spend** at benchmark CACs; a $25M three-year demand budget buys roughly 30,000–50,000 binds at the favorable end. These are planning bounds, not point estimates.

### 4.3 What smaller carriers report

Direct small-carrier commentary on aggregator ROI is thin in the public record. The best proxies: (a) Plymouth Rock's Partner book (~$260M, sourced partly from aggregators) ran **years of elevated loss ratios** and reached only "a small profit" in 2025 after deliberate shrinkage — a rare, candid disclosure that intermediated digital demand adversely selects [6]; (b) EverQuote's own 10-K concedes carrier purchasing collapsed in 2022–23 when loss ratios spiked, showing carriers treat the channel as marginal, dial-a-volume demand [17]; (c) chronic agent-forum complaints about shared-lead quality [21][22]. We found no public case of a sub-$1B regional carrier disclosing aggregator CAC directly — flagged as a gap.

---

## 5. Bind-online build benchmarks: cost, timeline, conversion

### 5.1 Case evidence

| Case | Stack | Timeline | Outcome | Sources |
|---|---|---|---|---|
| **Nationwide "Spire"** (greenfield digital auto) | Socotra cloud core + new front end | **Built and deployed in ~9 months**; announced Sept 2019, live in TX Dec 2019/Jan 2020 | Commercially dead within a year: app downloads near zero H2-2020, social media silent after Oct 2020, lead executives departed by Nov 2020 | [24][25][26] |
| **Plymouth Rock eSales** (bind-online on carrier core, agent-assigned) | Proprietary, on existing MA product | Announced Aug 2015, live for 10/1/2015 effective dates; NH/CT later that year | Still operating 10+ years; underpins ~$110M Core Direct (enterprise-wide) | [1][2][6] |
| **Clearcover embedded/API** | Partner-centric quote/bind API ("Choice"); Experian marketplace integration delivering **final bindable quotes** inside the partner UX (announced Apr 2023) | n/a (carrier already digital-native) | No conversion metrics disclosed publicly | [27] |
| **Verti USA** (greenfield brand + digital stack, single state) | New digital front end/brand within MAPFRE USA | ~14 months from decision (post-2016 planning) to Oct 2017 soft launch | Quiet shutdown ~2021 (Section 3) | [7][15] |

### 5.2 Cost benchmarks

Full core-system replacements at midsize-and-up P&C carriers run **$10M–$50M over 24–36 months** per Celent/Novarica-derived market coverage (directional; analyst-firm syntheses rather than audited figures) [28]. But the relevant comparison for MAPFRE is *not* a core replacement: it is a quote-bind front end plus rating/issuance APIs on top of the existing Commerce core, single state, single product — the Spire pattern, which a tier-1 carrier stood up in nine months on a modern cloud core [24]. Smaller insurers are the primary demand segment for exactly this "cloud-based, low-cost implementation" pattern per Novarica [28].

**Triangulation of the $5–15M MVP estimate:** (a) 9-month greenfield build at a carrier with far more integration burden than a single-state add-on [24]; (b) $10–50M representing the *full core replacement* ceiling, of which a bind-online MVP is a fraction [28]; (c) Verti USA — brand, stack, and state entry — was executed inside a $2.3B-revenue US unit without ever being material enough to disclose, implying a low-tens-of-millions total program at most [7][14]. The $5–15M MVP band (tech + program, excluding marketing) is consistent with all three anchors; **the marketing budget, not the build, is the dominant cost line** (Section 4.2).

### 5.3 Conversion outcomes

Publicly disclosed funnel conversion for these launches is essentially nil — neither Nationwide, Clearcover/Experian, nor Plymouth Rock publishes online quote-to-bind rates. The observable outcome variable is survival: agent-integrated bind-online (Plymouth Rock) persisted and compounds; brand-greenfield direct (Spire, Verti USA) died within 1–4 years despite competent builds [6][15][26]. That asymmetry is the finding.

---

## 6. So what for MAPFRE's growth strategy

1. **The Plymouth Rock Prime/eSales design is the reference architecture — and it was built for exactly MAPFRE's constraint.** It solves the channel-conflict problem structurally: same filed rates, every bind assigned to an agent for a one-time marketing fee, agent keeps full commission and lifetime ownership, unconverted quotes recycled to agents as consented leads [1][2][4]. MAPFRE can credibly tell its ~independent-agent base "the website is a storefront that feeds you," because its most direct MA competitor has operated that promise for a decade. The fee mechanism even makes the channel self-funding at the margin.

2. **MAPFRE has already run the failed alternative — on its own P&L.** Verti USA is the controlled experiment: greenfield brand, out-of-footprint state, no agent ecosystem, no brand equity, launched into a retrenchment agenda. It produced no disclosed premium and died silently [7][13][15]. The strategic conclusion is not "direct doesn't work"; it is that direct works only where MAPFRE has brand density, pricing confidence, and a renewal base to fund the J-curve — which is Massachusetts, through Commerce, not a new brand elsewhere. Internally, Verti's ghost is also an organizational asset: it inoculates the board against the "launch a shiny new D2C brand" pitch.

3. **Buy demand surgically; do not out-bid Progressive at a cyclical price peak.** Aggregator auctions in 2025–26 are being repriced upward by recovering national carriers [20], and the marketplace's economics are tuned to its 39%-share anchor tenant [17]. A single-state entrant should (a) treat aggregators as a *calibration* channel (small, capped buys to measure MA close rates and CAC before scaling), (b) prioritize the free/cheap demand it already owns — the existing quote-page traffic that today cannot bind, renewal cross-sell, and agent-site white-label funnels à la eSales URLs [4], and (c) underwrite the channel with Plymouth Rock's Partner-book lesson in view: intermediated digital volume adversely selects unless priced for it [6].

4. **The $5–15M MVP estimate stands; re-anchor the debate on the demand budget.** Nine months and a bolt-on front end is a proven pattern [24]; the tech spend is one-time and bounded. The real strategic decision is the multi-year acquisition-loss curve — Plymouth Rock's chairman prices reaching $500M direct at years of deliberate underwriting losses [6]. For MAPFRE, the agent-assigned model shrinks that curve: at benchmark $500–900 CAC and MA premiums of ~$1,700–2,400 [23][30], a 10,000-policy pilot is a $5–9M marketing commitment — a rounding error against the risk of continued share erosion in an 80%-of-revenue home market, and largely offsettable if agents pay Prime-style marketing fees for assigned binds.

5. **Sequencing recommendation grounded in the evidence:** Year 1 — enable bind on the existing quote page (MVP on the Commerce core, same filed rates), assign every bind to an agent for a fee, instrument the funnel. Year 2 — add agent white-label URLs and a lead-recycling marketplace (both proven by Plymouth Rock in this exact state) [4]; begin capped aggregator buys for calibration. Year 3 — scale paid digital only where measured MA CAC beats the $500–900 benchmark, telematics-qualified where possible (the direction Plymouth Rock is betting Core Direct on) [6].

**Key open items not resolvable publicly:** the dollar amount of Plymouth Rock's marketing fee; Prime/eSales channel-level volume and close rates in MA; Verti USA's actual premium, CAC, and loss ratios; carrier-side (vs. agent-side) MA click/lead pricing on EverQuote/MediaAlpha; SERFF confirmation of Prime rate-filing structure.

---

## Sources

1. Agency Checklists, "With Prime, Plymouth Rock Goes Direct But With Independent Agents In Tow," Aug 18, 2015 — https://agencychecklists.com/2015/08/18/with-prime-plymouth-rock-goes-direct-but-with-independent-agents-in-tow-12865/
2. Insurance Journal, "Plymouth Rock's 'Prime' Combines Online Sales With Independent Agent Channel," Aug 30, 2015 — https://www.insurancejournal.com/news/east/2015/08/30/380030.htm
3. Plymouth Rock Assurance Corporation, "Prime Agent Guide" (PRMA0915, Sept 2015) — https://aicontent.plymouthrock.com/PRAC_MA/Resources/MA_Prime_AgentGuide.PDF
4. Plymouth Rock Assurance Corporation, MA agent flip chart, "Claims, Online Services & Other Programs — eSales and Agent Quote Marketplace" (c. 2015–2016) — https://aicontent.plymouthrock.com/PRAC_MA/Resources/MA_Prime_FlipChart_Electronic.pdf
5. The Boston Globe, "Plymouth Rock tries to sell policies online, keep agents happy," Aug 16, 2015 — https://www.bostonglobe.com/business/2015/08/16/plymouth-rock-tries-sell-online-and-keep-independent-agents-happy/EwafB58HzHvu20CimFOBlI/story.html
6. The Plymouth Rock Company, 2025 Chairman's Letter (James M. Stone; covers FY2025, published early 2026) — https://www.plymouthrock.com/pdf/chairmans-letters/2025_Chairmans_Letter.pdf
7. El Mundo MAPFRE, "Verti launches digital auto insurance exclusively for Pennsylvania drivers," Dec 28, 2017 — https://www.elmundodemapfre.com/en/2017/12/28/verti-u-s-lanza-seguro-digital-automoviles-pennsylvania-2/
8. S&P Global Market Intelligence, "MAPFRE exiting 5 US states, launches digital auto insurance in Pennsylvania," Dec 2017 — https://www.spglobal.com/marketintelligence/en/news-insights/trending/duuznyu-bxhnrvnlh6onqq2
9. Insurance Journal, "MAPFRE USA to Exit 5, Focus on 11 States; Sell New York and Life Units in Reorganization," Dec 5, 2017 — https://www.insurancejournal.com/news/national/2017/12/05/473137.htm
10. MAPFRE Insurance press room, "MAPFRE reinforces profitable growth strategy in the U.S.," Dec 2017 — https://www.mapfreinsurance.com/press-room/profitable-growth-strategy-december/
11. Agency Checklists, "MAPFRE's Mission: The Company's U.S. Leaders on the Past, Present & Future of Massachusetts' Largest Insurer," Oct 23, 2018 — https://agencychecklists.com/2018/10/23/mapfres-mission-the-companys-u-s-leaders-on-the-past-present-future-of-massachusetts-largest-insurer-26200/
12. S&P Global Market Intelligence, "Spanish insurer Mapfre looking to cut back further in US," Feb 2020 — https://www.spglobal.com/marketintelligence/en/news-insights/latest-news-headlines/spanish-insurer-mapfre-looking-to-cut-back-further-in-us-57069014
13. MAPFRE S.A., Integrated Report 2020 (published Mar 2021; restructuring note: discontinuing AZ and PA "with the exception of the VERTI USA business"); MAPFRE S.A. Integrated Report 2022 (no US Verti mentions) — https://www.mapfre.com/media/shareholders/2021/integrated-report-2020.pdf ; https://www.mapfreinsurance.com/media/integrated-report-2022.pdf
14. MAPFRE Insurance 2021 Fact Sheet (May 2021; FY2020 US figures; "2018 — Verti launches in Pennsylvania") — https://www.mapfreinsurance.com/media/MAPFRE_Insurance_2021_Fact_Sheet.pdf
15. Coverager, "Verti Insurance no longer offers car insurance in the US," Oct 14, 2022 — https://coverager.com/verti-insurance-no-longer-offers-car-insurance-in-the-us/
16. verti.com homepage, rendered as "MAPFRE Insurance | Auto, Home & More Coverage" (accessed July 2, 2026) — https://www.verti.com/
17. EverQuote, Inc., Form 10-K for FY2024 (filed Feb 2025) — https://www.sec.gov/Archives/edgar/data/0001640428/000095017025026724/ever-20241231.htm
18. EverQuote, Inc., "EverQuote Announces Fourth Quarter and Full Year 2025 Financial Results," Feb 23, 2026 — https://investors.everquote.com/press-releases/press-release-details/2026/EverQuote-Announces-Fourth-Quarter-and-Full-Year-2025-Financial-Results/default.aspx
19. MediaAlpha, Inc., Q4/FY2024 earnings release (8-K exhibit, Feb 2025) — https://www.sec.gov/Archives/edgar/data/0001818383/000181838325000020/maxq42024-earningsreleasee.htm
20. MediaAlpha, Inc., "MediaAlpha Announces Third Quarter 2025 Financial Results," Oct 29, 2025 — https://www.globenewswire.com/news-release/2025/10/29/3176876/0/en/MediaAlpha-Announces-Third-Quarter-2025-Financial-Results.html
21. InsuranceLeadReviews.com, "EverQuote Leads" review (content current as of June 30, 2026) — https://www.insuranceleadreviews.com/everquote-leads/
22. Insurance Forums, "Anyone Tried EverQuote?" (agent-reported pricing $6–21/lead; thread ongoing) — https://www.insurance-forums.com/community/threads/anyone-tried-everquote.77741/
23. Focus Digital, "Average Customer Acquisition Cost in the Insurance Industry" (undated, c. 2023–2024; $487 direct writers, $500–800 industry, ~$900 with independent agents); Metricus, "Insurance Marketing Benchmarks 2026" (captive-channel CAC ~$792) — https://focus-digital.co/average-customer-acquisition-cost-in-the-insurance-industry/ ; https://metricusapp.com/blog/insurance-marketing-executive-benchmarks-2026/
24. GlobeNewswire (Socotra), "Nationwide launches new digital insurance product on Socotra," Dec 11, 2019 ("built and deployed Spire in only nine months") — https://www.globenewswire.com/news-release/2019/12/11/1959181/0/en/Nationwide-launches-new-digital-insurance-product-on-Socotra.html
25. Carrier Management, "Nationwide Eyes Q4 Rollout for Spire, a Digital Auto Insurance Platform," Sept 25, 2019 — https://www.carriermanagement.com/news/2019/09/25/198314.htm
26. Coverager, "Nationwide's Spire is sorry for the inconvenience" (c. Feb 2021; app-download and staffing evidence of failure) — https://coverager.com/nationwides-spire-is-sorry-for-the-inconvenience/
27. Insurance Journal, "Markets/Coverages: Clearcover, Experian Team on Embedded Auto Insurance Solution," Apr 27, 2023; PR Newswire, "Clearcover Teams with Experian to Deliver an Embedded Insurance Solution," Apr 2023 — https://www.insurancejournal.com/news/national/2023/04/27/718170.htm ; https://www.prnewswire.com/news-releases/clearcover-teams-with-experian-to-deliver-an-embedded-insurance-solution-301808598.html
28. Celent, "Policy Administration Systems: P&C Insurance; North America Edition" (market coverage; implementation ranges directional); Novarica/Aite-Novarica, "Property/Casualty Policy Administration Systems," May 2021 excerpt — https://www.celent.com/en/insights/policy-administration-systems-p-and-c-insurance-north-america-edition ; https://www.waterstreetcompany.com/wp-content/uploads/2021/06/REPRINT_SAMPLE_Novarica2105-MN-PAS_PC.pdf
29. The Objective, "Mapfre reequilibra el patrimonio de su filial Verti tras asumir un agujero de 36 millones," May 31, 2023 — https://theobjective.com/economia/2023-05-31/mapfre-verti-agujero/
30. Insure.com, "Average Car Insurance Cost in Massachusetts (2025 Rates)" ($2,430/yr full coverage); The Zebra / MoneyGeek 2026 estimates ($1,200 range) — methodologies differ materially — https://www.insure.com/car-insurance/average-car-insurance-cost-in-massachusetts/ ; https://www.thezebra.com/auto-insurance/massachusetts-car-insurance/ma-average-cost-of-auto-insurance/
